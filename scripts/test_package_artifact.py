import hashlib
import json
import os
from pathlib import Path
import tarfile
import tempfile
import unittest

from package_artifact import package


class PackageArtifactTest(unittest.TestCase):
    def setUp(self):
        self.temp = tempfile.TemporaryDirectory()
        self.addCleanup(self.temp.cleanup)
        self.root = Path(self.temp.name)
        for directory in ("lib/src", "example", "tests", ".github"):
            (self.root / directory).mkdir(parents=True)
        for name, data in {"lib/src/client.dart": "// synthetic client\n", "example/app.dart": "// example\n",
                           "README.md": "readme", "LICENSE": "license", "CHANGELOG.md": "changes",
                           "tests/secret.txt": "not packaged", ".github/private.txt": "not packaged"}.items():
            (self.root / name).write_text(data)
        self.spec = self.root / "pubspec.yaml"
        self.spec.write_text("name: mailchannels_email_api\nversion: 1.2.3-rc.1\n")

    def test_versioned_archive_manifest_and_exact_allowlist(self):
        archive, manifest = package(self.root)
        self.assertEqual(archive.name, "mailchannels_email_api-1.2.3-rc.1.tgz")
        record = json.loads(manifest.read_text())
        self.assertEqual(record["version"], "1.2.3-rc.1")
        self.assertEqual(record["archive_sha256"], hashlib.sha256(archive.read_bytes()).hexdigest())
        with tarfile.open(archive) as tar:
            self.assertEqual(tar.getnames(), sorted(["pubspec.yaml", "README.md", "LICENSE", "CHANGELOG.md", "example/app.dart", "lib/src/client.dart"]))
            self.assertEqual([row["path"] for row in record["files"]], tar.getnames())
            for member, row in zip(tar, record["files"]):
                data = tar.extractfile(member).read()
                self.assertEqual(row["sha256"], hashlib.sha256(data).hexdigest())
                self.assertEqual(row["size"], len(data))
                self.assertEqual((member.uid, member.gid, member.mtime, member.mode), (0, 0, 0, 0o644))

    def test_repeat_build_ignores_filesystem_time_and_modes_but_tracks_content(self):
        archive, manifest = package(self.root)
        original = (archive.read_bytes(), manifest.read_bytes())
        for path in self.root.rglob("*"):
            if path.is_file() and ".work" not in path.parts:
                os.utime(path, (123456789, 123456789))
                path.chmod(0o600)
        package(self.root)
        self.assertEqual((archive.read_bytes(), manifest.read_bytes()), original)
        (self.root / "lib/src/client.dart").write_text("// changed\n")
        package(self.root)
        self.assertNotEqual(archive.read_bytes(), original[0])

    def test_version_change_changes_both_filename_and_manifest(self):
        first, _ = package(self.root)
        self.spec.write_text("name: mailchannels_email_api\nversion: 2.0.0+build.3\n")
        second, manifest = package(self.root)
        self.assertNotEqual(first, second)
        self.assertTrue(first.exists())
        self.assertEqual(second.name, "mailchannels_email_api-2.0.0+build.3.tgz")
        self.assertEqual(json.loads(manifest.read_text())["version"], "2.0.0+build.3")

    def test_invalid_coordinates_fail_before_archive_creation(self):
        for version in ("../escape", "01.2.3", "1.2", "1.2.3-01", "1.2.3-", "1.2.3+", "1.2.3/other"):
            self.spec.write_text(f"name: mailchannels_email_api\nversion: '{version}'\n")
            with self.assertRaises(ValueError):
                package(self.root)
        self.spec.write_text("name: wrong_package\nversion: 1.2.3\n")
        with self.assertRaises(ValueError):
            package(self.root)
        self.assertFalse((self.root / ".work").exists())

    def test_link_or_special_file_is_not_archived(self):
        for target in ("lib/src/client.dart", "README.md", "example"):
            path = self.root / target
            backup = path.with_name(path.name + ".original")
            path.rename(backup)
            path.symlink_to(backup)
            with self.assertRaises(ValueError):
                package(self.root)
            path.unlink()
            backup.rename(path)
        fifo = self.root / "lib/private-pipe"
        os.mkfifo(fifo)
        with self.assertRaises(ValueError):
            package(self.root)


if __name__ == "__main__":
    unittest.main()

"""Build the reviewed local consumer archive, not a pub.dev upload archive."""

import gzip
import hashlib
import io
import json
import os
from pathlib import Path
import re
import stat
import sys
import tarfile
import tempfile

import yaml


def package(root):
    root = Path(root).resolve()
    paths = []
    for name in ("lib", "example", "pubspec.yaml", "README.md", "LICENSE", "CHANGELOG.md"):
        path = root / name
        mode = path.lstat().st_mode
        if name in {"lib", "example"}:
            if not stat.S_ISDIR(mode):
                raise ValueError("Package source directory required")
            children = list(path.rglob("*"))
            for child in children:
                mode = child.lstat().st_mode
                if not stat.S_ISREG(mode) and not stat.S_ISDIR(mode):
                    raise ValueError("Package links and special files are not allowed")
            paths.extend(child for child in children if child.is_file())
        else:
            if not stat.S_ISREG(mode):
                raise ValueError("Package metadata must be a regular file")
            paths.append(path)
    # Archive and manifest consume one snapshot, including the version's bytes.
    files = {p.relative_to(root).as_posix(): p.read_bytes() for p in sorted(paths)}
    spec = yaml.safe_load(files["pubspec.yaml"])
    name, version = spec["name"], spec["version"]
    if name != "mailchannels_email_api" or not isinstance(version, str):
        raise ValueError("Unexpected package identity")
    number = r"(?:0|[1-9][0-9]*)"
    identifier = r"[0-9A-Za-z-]+"
    match = re.fullmatch(rf"{number}\.{number}\.{number}(?:-({identifier}(?:\.{identifier})*))?(?:\+{identifier}(?:\.{identifier})*)?", version)
    if not match or (match[1] and any(part.isdigit() and len(part) > 1 and part[0] == "0"
                                    for part in match[1].split("."))):
        raise ValueError("Package version must be SemVer")
    work = root / ".work"
    work.mkdir(exist_ok=True)
    if work.is_symlink():
        raise ValueError("Package output directory must not be a link")
    archive = work / f"{name}-{version}.tgz"
    manifest = work / f"{name}-{version}.manifest.json"
    temporary = None
    try:
        with tempfile.NamedTemporaryFile(dir=work, prefix="package-", delete=False) as target:
            temporary = Path(target.name)
            with gzip.GzipFile(filename="", mode="wb", fileobj=target, mtime=0) as compressed:
                with tarfile.open(fileobj=compressed, mode="w", format=tarfile.PAX_FORMAT) as tar:
                    for path, data in files.items():
                        info = tarfile.TarInfo(path)
                        info.size = len(data)
                        info.mode = 0o644
                        info.mtime = 0
                        info.uid = info.gid = 0
                        info.uname = info.gname = ""
                        tar.addfile(info, io.BytesIO(data))
        digest = hashlib.sha256(temporary.read_bytes()).hexdigest()
        record = {"format": 1, "package": name, "version": version,
                  "archive": archive.name, "archive_sha256": digest,
                  "files": [{"path": path, "size": len(data), "sha256": hashlib.sha256(data).hexdigest()}
                            for path, data in files.items()]}
        os.replace(temporary, archive)
        manifest.write_text(json.dumps(record, indent=2) + "\n")
        return archive, manifest
    finally:
        if temporary is not None:
            temporary.unlink(missing_ok=True)


if __name__ == "__main__":
    archive, _ = package(sys.argv[1])
    print(archive)

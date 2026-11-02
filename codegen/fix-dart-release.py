"""Install maintained package metadata and example after generation."""
import shutil,sys
from pathlib import Path
sdk=Path(sys.argv[1]);source=Path(__file__).parent/'dart-release'
for p in source.rglob('*'):
    if p.is_file():
        target=sdk/p.relative_to(source)
        if target.name == "pubspec.template": target=target.with_name("pubspec.yaml")
        target.parent.mkdir(parents=True,exist_ok=True)
        shutil.copy2(p,target)
model=sdk/'lib/src/model/suppression_entry_response.dart'
text=model.read_text()
name='class SuppressionEntryResponseSource_Enum extends EnumClass {'
assert text.count(name)==1
model.write_text(text.replace(name, '// Preserve the generated public type name for compatibility.\n// ignore: camel_case_types\n'+name))
print('Installed maintained Dart package metadata and example')

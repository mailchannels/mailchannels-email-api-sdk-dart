"""Remove only imports identified by the native analyzer for the pinned generator."""
import json,sys
from pathlib import Path
sdk=Path(sys.argv[1]);base=Path(__file__).parent
rows=json.loads((base/'dart-unused-imports.json').read_text())
for row in rows:
    path=sdk/row['path'];text=path.read_text()
    line="import '"+row['import']+"';\n"
    assert text.count(line)==1,f'Review generated import: {path}: {line}'
    path.write_text(text.replace(line,''))
print(f'Removed {len(rows)} analyzer-confirmed unused Dart imports')

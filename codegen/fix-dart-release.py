"""Install maintained package metadata and example after generation."""
import shutil,sys
from pathlib import Path
sdk=Path(sys.argv[1]);source=Path(__file__).parent/'dart-release'
for p in source.rglob('*'):
    if p.is_file():
        target=sdk/p.relative_to(source);target.parent.mkdir(parents=True,exist_ok=True)
        shutil.copy2(p,target)
print('Installed maintained Dart package metadata and example')

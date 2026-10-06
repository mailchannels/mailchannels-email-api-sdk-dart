"""Percent-encode individual path parameters without altering query serialization."""
import re,sys
from pathlib import Path
sdk=Path(sys.argv[1]);total=0
for path in (sdk/'lib/src/api').glob('*.dart'):
    lines=path.read_text().splitlines(keepends=True)
    for i,line in enumerate(lines):
        if 'final _path =' not in line: continue
        pattern=r'(encodeQueryParameter\(_serializers, \w+, const FullType\(\w+\)\)\.toString\(\))'
        line,n=re.subn(pattern,r'Uri.encodeComponent(\1)',line)
        assert n==line.count('.replaceAll('),(path,line)
        total+=n;lines[i]=line
    path.write_text(''.join(lines))
assert total==28, f'Review generated path parameters: {total}'
print(f'Encoded {total} Dart path parameters as individual URI components')

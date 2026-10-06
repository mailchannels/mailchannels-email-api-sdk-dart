"""Provide redacted model formatting before built_value code generation."""
import re,sys
from pathlib import Path
sdk=Path(sys.argv[1]);count=0
for path in (sdk/'lib/src/model').glob('*.dart'):
    if path.name.endswith('.g.dart'):continue
    text=path.read_text()
    match=re.search(r'abstract class (\w+) implements Built<',text)
    if not match:continue
    name=match.group(1);needle=f'  {name}._();'
    assert text.count(needle)==1 and 'String toString()' not in text,f'Review model: {name}'
    text=text.replace(needle, f"  @override\n  String toString() => '{name} {{ [REDACTED] }}';\n\n"+needle)
    path.write_text(text);count+=1
assert count==70, f'Review generated model count: {count}'
print(f'Added redacted formatting to {count} Dart built_value models')

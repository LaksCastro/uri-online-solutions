import 'dart:convert';
import 'dart:io';

void main() {
  final ds = _getIntListLine();

  final days = ds[0], t = [ds[1]];

  for (var i = 0; i < days; i++) {
    t.add(t.last + _getIntLine());
  }

  t.sort((a, b) => a - b);

  print(t.first);
}

String _getLine() =>
    stdin.readLineSync(encoding: Encoding.getByName('utf-8'))?.trim() ?? '';

List<int> _getIntListLine() => _getLine().split(' ').map(int.parse).toList();

int _getIntLine() => int.parse(_getLine());

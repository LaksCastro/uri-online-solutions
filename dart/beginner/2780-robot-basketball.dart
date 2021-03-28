import 'dart:convert';
import 'dart:io';

void main() {
  final d = _getIntLine();

  const p = {
    1400: 3,
    800: 2,
    0: 1,
  };

  for (final k in p.keys) {
    if (d > k) {
      return print(p[k]);
    }
  }

  print(p.values.last);
}

String _getLine() =>
    stdin.readLineSync(encoding: Encoding.getByName('utf-8'))?.trim() ?? '';

int _getIntLine() => int.parse(_getLine());

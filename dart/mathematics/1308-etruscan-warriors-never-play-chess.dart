import 'dart:convert';
import 'dart:io';

void main() {
  const r = 1;

  final n = _getIntLine();

  for (var i = 0; i < n; i++) {
    final x = _getIntLine();

    final last = 1 + (x - 1) * r;

    final sum = x * (1 + last) ~/ 2;

    print(sum);
  }
}

String _getLine() =>
    stdin.readLineSync(encoding: Encoding.getByName('utf-8'))?.trim() ?? '';

int _getIntLine() => int.parse(_getLine());

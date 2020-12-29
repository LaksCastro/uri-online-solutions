import 'dart:convert';
import 'dart:io';

void main() {
  for (var i = 0; i < 10; i++) {
    final n = _getIntLine();

    print('X[$i] = ${n <= 0 ? 1 : n}');
  }
}

String _getLine() =>
    stdin.readLineSync(encoding: Encoding.getByName('utf-8')).trim();

int _getIntLine() => int.parse(_getLine());

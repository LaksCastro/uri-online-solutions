import 'dart:convert';
import 'dart:io';

void main() {
  String x;

  while ((x = _getLine()).isNotEmpty) {
    final y = _getLine();

    final a = double.parse(_normalize(x));
    final b = double.parse(_normalize(y));

    final rest = a % 1;

    if (b > rest) {
      print(a.floor());
    } else {
      print(a.ceil());
    }
  }
}

String _normalize(String n) => n.endsWith('.')
    ? '${n}0'
    : n.startsWith('.')
        ? '0$n'
        : n;

String _getLine() =>
    stdin.readLineSync(encoding: Encoding.getByName('utf-8')) ?? '';

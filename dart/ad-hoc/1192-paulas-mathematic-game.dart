import 'dart:convert';
import 'dart:io';

void main() {
  final n = _getIntLine();

  for (var i = 0; i < n; i++) {
    final round = _getLine();

    final a = int.parse(round[0]);
    final b = round[1];
    final c = int.parse(round[2]);

    if (a == c) {
      print(a * c);
    } else if (_isUpper(b)) {
      print(c - a);
    } else {
      print(a + c);
    }
  }
}

bool _isUpper(String n) => n.toUpperCase() == n;

String _getLine() =>
    stdin.readLineSync(encoding: Encoding.getByName('utf-8'))?.trim() ?? '';

int _getIntLine() => int.parse(_getLine());

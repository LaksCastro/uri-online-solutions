import 'dart:convert';
import 'dart:io';

void main() {
  final n = _getIntLine();

  print(((n + 1) * (n + 2)) ~/ 2);
}

String _getLine() =>
    stdin.readLineSync(encoding: Encoding.getByName('utf-8'))?.trim() ?? '';

int _getIntLine() => int.parse(_getLine());

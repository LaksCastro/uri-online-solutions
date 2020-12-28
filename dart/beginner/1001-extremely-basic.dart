import 'dart:convert';
import 'dart:io';

void main() {
  print('X = ${_getIntLine() + _getIntLine()}');
}

String _getLine() {
  final line = stdin.readLineSync(encoding: Encoding.getByName('utf-8'));

  return line.trim();
}

int _getIntLine() {
  return int.parse(_getLine());
}

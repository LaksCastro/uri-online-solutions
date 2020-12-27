import 'dart:convert';
import 'dart:io';

void main() {
  final a = _getIntLine();
  final b = _getIntLine();
  final c = _getIntLine();
  final d = _getIntLine();

  print('DIFERENCA = ${a * b - c * d}');
}

String _getLine() {
  final line = stdin.readLineSync(encoding: Encoding.getByName('utf-8'));

  return line.trim();
}

int _getIntLine() => int.parse(_getLine());

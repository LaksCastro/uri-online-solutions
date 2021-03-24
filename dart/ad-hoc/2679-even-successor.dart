import 'dart:convert';
import 'dart:io';

void main() {
  final x = _getIntLine();

  final isEven = x % 2 == 0;

  print(x + (isEven ? 2 : 1));
}

String _getLine() =>
    stdin.readLineSync(encoding: Encoding.getByName('utf-8'))?.trim() ?? '';

int _getIntLine() => int.parse(_getLine());

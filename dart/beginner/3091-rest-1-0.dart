import 'dart:convert';
import 'dart:io';

void main() {
  final a = _getIntLine(), b = _getIntLine();

  print('${a % b}');
}

String _getLine() =>
    stdin.readLineSync(encoding: Encoding.getByName('utf-8'))?.trim() ?? '';

int _getIntLine() => int.parse(_getLine());

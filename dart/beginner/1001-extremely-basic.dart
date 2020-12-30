import 'dart:convert';
import 'dart:io';

void main() {
  print('X = ${_getIntLine() + _getIntLine()}');
}

String _getLine() =>
    stdin.readLineSync(encoding: Encoding.getByName('utf-8'))?.trim() ?? '';

int _getIntLine() => int.tryParse(_getLine());

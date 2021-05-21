import 'dart:convert';
import 'dart:io';

void main() {
  print(_getLine().split('').reversed.join(''));
}

String _getLine() =>
    stdin.readLineSync(encoding: Encoding.getByName('utf-8'))?.trim() ?? '';

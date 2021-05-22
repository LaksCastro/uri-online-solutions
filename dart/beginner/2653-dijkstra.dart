import 'dart:convert';
import 'dart:io';

void main() {
  String n;

  final values = <String>{};

  while ((n = _getLine()) != null) {
    values.add(n);
  }

  print(values.length);
}

String _getLine() => stdin.readLineSync(encoding: Encoding.getByName('utf-8'));

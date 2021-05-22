import 'dart:convert';
import 'dart:io';

void main() async {
  final name = _getLine();

  print(name.length > 80 ? 'NO' : 'YES');
}

String _getLine() => stdin.readLineSync(encoding: Encoding.getByName('utf-8'));

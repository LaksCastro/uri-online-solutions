import 'dart:convert';
import 'dart:io';

void main() async {
  final n = _getLine();

  print(n.codeUnitAt(0) - 64);
}

String _getLine() =>
    stdin.readLineSync(encoding: Encoding.getByName('utf-8'))?.trim() ?? '';

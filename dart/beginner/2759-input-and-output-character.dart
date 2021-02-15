import 'dart:convert';
import 'dart:io';

void main() {
  final a = _getLine();
  final b = _getLine();
  final c = _getLine();

  print('A = $a, B = $b, C = $c');
  print('A = $b, B = $c, C = $a');
  print('A = $c, B = $a, C = $b');
}

String _getLine() =>
    stdin.readLineSync(encoding: Encoding.getByName('utf-8')).trim();

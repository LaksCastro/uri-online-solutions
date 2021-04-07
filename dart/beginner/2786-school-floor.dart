import 'dart:convert';
import 'dart:io';

void main() {
  final l = _getIntLine();
  final c = _getIntLine();

  final t1 = l * c + (c - 1) * (l - 1);
  final t2 = (c - 1) * 2 + (l - 1) * 2;

  print('$t1\n$t2');
}

String _getLine() =>
    stdin.readLineSync(encoding: Encoding.getByName('utf-8'))?.trim() ?? '';

int _getIntLine() => int.parse(_getLine());

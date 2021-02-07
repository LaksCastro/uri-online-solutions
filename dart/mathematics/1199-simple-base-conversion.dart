import 'dart:convert';
import 'dart:io';

void main() async {
  String input;

  while ((input = _getLine()) != '-1') {
    final isHexa = input.startsWith('0x');
    final n = int.parse(input);

    final prefix = !isHexa ? '0x' : '';
    final value = n.toRadixString(isHexa ? 10 : 16).toUpperCase();

    print('$prefix$value');
  }
}

String _getLine() =>
    stdin.readLineSync(encoding: Encoding.getByName('utf-8'))?.trim() ?? '';

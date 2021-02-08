import 'dart:convert';
import 'dart:io';

void main() async {
  final v = _getIntLine();
  final p = _getIntLine();

  final rest = v % p;
  final value = v / p;

  for (var i = 0; i < p; i++) {
    print(value.floor() + (i < rest ? 1 : 0));
  }
}

String _getLine() =>
    stdin.readLineSync(encoding: Encoding.getByName('utf-8'))?.trim() ?? '';

int _getIntLine() => int.tryParse(_getLine());

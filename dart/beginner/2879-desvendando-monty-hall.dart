import 'dart:convert';
import 'dart:io';

void main() {
  final n = _getIntLine();

  var qtd = 0;

  for (var i = 0; i < n; i++) {
    final x = _getIntLine();

    qtd += x != 1 ? 1 : 0;
  }

  print(qtd);
}

String _getLine() =>
    stdin.readLineSync(encoding: Encoding.getByName('utf-8'))?.trim() ?? '';

int _getIntLine() => int.parse(_getLine());

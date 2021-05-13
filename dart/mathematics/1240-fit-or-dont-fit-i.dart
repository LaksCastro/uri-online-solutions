import 'dart:convert';
import 'dart:io';

void main() {
  final n = _getIntLine();

  for (var i = 0; i < n; i++) {
    final ab = _getStringListLine(), a = ab[0], b = ab[1];

    print(a.endsWith(b) ? 'encaixa' : 'nao encaixa');
  }
}

String _getLine() =>
    stdin.readLineSync(encoding: Encoding.getByName('utf-8'))?.trim() ?? '';

List<String> _getStringListLine() => _getLine().split(' ');

int _getIntLine() => int.parse(_getLine());

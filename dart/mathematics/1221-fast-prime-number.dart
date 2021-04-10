import 'dart:convert';
import 'dart:io';

void main() {
  final n = _getIntLine();

  for (var i = 0; i < n; i++) {
    final x = _getIntLine();

    print(_isPrime(x) ? 'Prime' : 'Not Prime');
  }
}

/// [Reference](https://www.dcc.fc.up.pt/~pbv/aulas/progimp/teoricas/teorica07.html)
bool _isPrime(int x) {
  for (var d = 2; d * d <= x; d++) {
    if (x % d == 0) return false;
  }

  return true;
}

String _getLine() =>
    stdin.readLineSync(encoding: Encoding.getByName('utf-8'))?.trim() ?? '';

int _getIntLine() => int.parse(_getLine());

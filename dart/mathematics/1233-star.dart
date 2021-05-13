import 'dart:convert';
import 'dart:io';
import 'dart:math';

const _2pi = 2 * pi;

void main() {
  int n, resp = 0;

  while ((n = _getIntLine()) != null) {
    for (var k = 1; k < n ~/ 2; k += 2) {
      final distance = _2pi / n;

      final kn = _2pi / (k * distance);

      if (kn % 1 != 0) continue;

      if (kn.toInt() == n) resp++;
    }

    print(resp);
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

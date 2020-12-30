import 'dart:convert';
import 'dart:io';

void main() {
  int x, z, c;

  while (c == null) {
    final input = _getIntLine();

    x ??= input;

    z = input > x ? input : null;

    if (x != null && z != null) c = _sum(x, z);
  }

  print(c);
}

int _sum(int c, int t, [int ac = 0, int q = 0]) =>
    ac > t ? q : _sum(c + 1, t, ac + c, ++q);

String _getLine() =>
    stdin.readLineSync(encoding: Encoding.getByName('utf-8')).trim();

int _getIntLine() => int.parse(_getLine());

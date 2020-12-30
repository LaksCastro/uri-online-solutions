import 'dart:convert';
import 'dart:io';

void main() {
  int input;

  while ((input = _getIntLine()) != 0) {
    print(_sum(input));
  }
}

int _sum(int n, [int i = 0, int ac = 0]) =>
    i == 5 ? ac : _sum(n + 2, ++i, (_isEven(n) ? n : n + 1) + ac);

bool _isEven(int n) => n % 2 == 0;

String _getLine() =>
    stdin.readLineSync(encoding: Encoding.getByName('utf-8')).trim();

int _getIntLine() => int.parse(_getLine());

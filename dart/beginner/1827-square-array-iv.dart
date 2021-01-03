import 'dart:convert';
import 'dart:io';

void main() {
  int n;

  while ((n = _getIntLine()) != -1) {
    _generate2DArray(n, n * n - 1);
  }
}

void _generate2DArray(int n, int last) {
  int _getX(int c, int n) => c ~/ n;
  int _getY(int c, int n) => c % n;

  for (var current = 0; current <= last; current++) {
    final x = _getX(current, n);
    final y = _getY(current, n);

    final lim = n - 1;
    final l1 = n ~/ 3;

    if (x == y && x == lim / 2) {
      _print('4');
    } else if ((x >= l1 && x <= lim - l1) && (y >= l1 && y <= lim - l1)) {
      _print('1');
    } else if (y == lim - x) {
      _print('3');
    } else if (y == x) {
      _print('2');
    } else {
      _print('0');
    }

    if (x != _getX(current + 1, n)) _print('\n');
  }
}

void _print(String msg) => stdout.write(msg);

String _getLine() =>
    stdin.readLineSync(encoding: Encoding.getByName('utf-8'))?.trim() ?? '';

int _getIntLine() {
  final line = _getLine();

  return line.isEmpty ? -1 : int.parse(line);
}

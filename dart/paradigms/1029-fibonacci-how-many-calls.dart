import 'dart:convert';
import 'dart:io';

void main() {
  final n = _getIntLine();

  for (var i = 0; i < n; i++) {
    final x = _getIntLine();

    final fib = _fib(x), y = fib[0], c = fib[1];

    print('fib($x) = ${(c - 1) * 2} calls = $y');
  }
}

List<int> _fib(int n, [int calls = 1]) {
  if (n == 0 || n == 1) return [n, calls];

  final a = _fib(n - 1, calls);
  final b = _fib(n - 2, calls);

  return [a[0] + b[0], a[1] + b[1]];
}

String _getLine() =>
    stdin.readLineSync(encoding: Encoding.getByName('utf-8')).trim();

int _getIntLine() => int.parse(_getLine());

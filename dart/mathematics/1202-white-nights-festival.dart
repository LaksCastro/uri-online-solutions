import 'dart:convert';
import 'dart:io';
import 'dart:math' as math;

final _root5 = math.sqrt(5);

void main() async {
  final n = _getIntLine();

  final fib = _fib(BigInt.from(n));

  print(fib);

  // for (var i = 0; i < n; i++) {
  //   final nBinary = _getLine();
  //   final nDecimal = BigInt.parse(nBinary, radix: 2);

  //   final fib = _fastFibonacci(nDecimal);

  //   print(fib);

  //   print((fib ~/ BigInt.one).toString().padLeft(3, '0'));
  // }
}

BigInt _fib(BigInt n) {
  if (n <= BigInt.two) return n;

  return _fib(n - BigInt.one) + _fib(n - BigInt.two);
}

String _getLine() =>
    stdin.readLineSync(encoding: Encoding.getByName('utf-8'))?.trim() ?? '';

int _getIntLine() => int.parse(_getLine());

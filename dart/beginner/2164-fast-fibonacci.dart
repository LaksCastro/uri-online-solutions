import 'dart:convert';
import 'dart:io';
import 'dart:math' as math;

final _root5 = math.sqrt(5);

void main() async {
  final n = _getIntLine();

  print(_fastFibonacci(n).toStringAsFixed(1));
}

double _fastFibonacci(int n) =>
    (_apply(n, sum: true) - _apply(n, sum: false)) / _root5;

double _apply(int n, {bool sum = true}) =>
    math.pow((1 + (sum ? _root5 : -_root5)) / 2, n);

String _getLine() =>
    stdin.readLineSync(encoding: Encoding.getByName('utf-8'))?.trim() ?? '';

int _getIntLine() => int.parse(_getLine());

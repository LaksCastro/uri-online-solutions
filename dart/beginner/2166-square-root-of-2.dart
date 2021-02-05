import 'dart:convert';
import 'dart:io';

void main() async {
  final n = _getIntLine();

  print((1 + (n == 0 ? 0 : _sqrt(n))).toStringAsFixed(10));
}

double _sqrt(int n, [int i = 0]) => i < n - 1 ? 1 / (2 + _sqrt(n, ++i)) : 1 / 2;

String _getLine() =>
    stdin.readLineSync(encoding: Encoding.getByName('utf-8'))?.trim() ?? '';

int _getIntLine() => int.parse(_getLine());

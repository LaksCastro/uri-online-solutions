import 'dart:convert';
import 'dart:io';

void main() {
  final n = _getIntLine();

  for (var i = 0; i < n; i++) {
    final input = _getLine();

    final n = int.parse(input.replaceAll('!', ''));
    final k = RegExp(r'!').allMatches(input).length;

    print(_kFactorial(n, k));
  }
}

int _kFactorial(int n, int k) {
  if (n < 1) return 1;

  return n * _kFactorial(n - k, k);
}

String _getLine() =>
    stdin.readLineSync(encoding: Encoding.getByName('utf-8'))?.trim() ?? '';

int _getIntLine() => int.parse(_getLine());

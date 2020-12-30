import 'dart:convert';
import 'dart:io';

void main() {
  final inputs = _getIntListLine()..removeWhere((input) => input <= 0);

  final a = inputs[0];
  final n = inputs[1];

  print(_sum(a, n));
}

int _sum(int a, int n, [int ac = 0, int i = 0]) =>
    i < n ? _sum(a, n, ac + a + i, ++i) : ac;

String _getLine() =>
    stdin.readLineSync(encoding: Encoding.getByName('utf-8')).trim();

List<int> _getIntListLine() => _getLine().split(' ').map(int.parse).toList();

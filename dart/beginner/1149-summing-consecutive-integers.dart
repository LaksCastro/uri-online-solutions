import 'dart:convert';
import 'dart:io';

void main() {
  final inputs = _getIntListLine()..removeWhere((input) => input <= 0);

  final a = inputs[0];
  final n = inputs[1];

  var s = 0;

  for (var i = 0; i < n; i++) {
    s += a + i;
  }

  print(s);
}

String _getLine() =>
    stdin.readLineSync(encoding: Encoding.getByName('utf-8')).trim();

List<int> _getIntListLine() =>
    _getLine().split(' ').map((o) => int.parse(o)).toList();

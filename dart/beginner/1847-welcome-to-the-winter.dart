/// * Thanks https://github.com/pin3da/Programming-contest/blob/master/solved/URI/1847%20Welcome%20to%20the%20Winter!/solution.cc * ///

import 'dart:convert';
import 'dart:io';

void main() {
  final ts = _getIntListLine();

  final a = ts[0], b = ts[1], c = ts[2];

  final m1 = b - a, m2 = c - b;

  if (m2 > m1) {
    print(':)');
  } else if (m2 < m1) {
    print(':(');
  } else {
    if (m1 <= 0) {
      print(':(');
    } else {
      print(':)');
    }
  }
}

String _getLine() =>
    stdin.readLineSync(encoding: Encoding.getByName('utf-8'))?.trim();

List<int> _getIntListLine() => _getLine().split(' ').map(int.parse).toList();

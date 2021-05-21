import 'dart:convert';
import 'dart:io';

void main() {
  String n;

  final regex = RegExp(r'[\(\)]');

  while ((n = _getLine()).isNotEmpty) {
    var isLeft = false;

    for (var i = 0; i < n.length; i++) {
      final current = n.indexOf(regex);

      i = current;

      final isL = _isLeft(n[current]);

      if (!isLeft && isL) return print('incorrect');

      isLeft = isL;

      final next = current + 1;

      n = next >= n.length ? '' : n.substring(next);
    }
  }
}

bool _isLeft(String t) => t == '(';

String _getLine() =>
    stdin.readLineSync(encoding: Encoding.getByName('utf-8'))?.trim() ?? '';

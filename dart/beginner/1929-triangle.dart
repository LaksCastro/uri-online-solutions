import 'dart:convert';
import 'dart:io';

void main() {
  final abcd = _getIntListLine();

  for (var i = 0; i < abcd.length; i++) {
    final x = abcd[i];

    for (var j = 0; j < abcd.length; j++) {
      if (j == i) continue;

      final y = abcd[j];

      for (var f = 0; f < abcd.length; f++) {
        if (f == i || f == j) continue;

        final z = abcd[f];

        final abc = [x, y, z]..sort((a, b) => b - a);

        final a = abc[0];
        final c = abc[1];
        final d = abc[2];

        if (c + d > a) {
          return print('S');
        }
      }
    }
  }

  return print('N');
}

String _getLine() =>
    stdin.readLineSync(encoding: Encoding.getByName('utf-8')).trim();

List<int> _getIntListLine() => _getLine().split(' ').map(int.parse).toList();

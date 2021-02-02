// Thanks! https://muitomaiscodigoss.blogspot.com/2018/09/uri-problema-1089-loop-musical-solucao.html

import 'dart:convert';
import 'dart:io';

void main() async {
  int n;

  while ((n = _getIntLine()) != 0) {
    final inputs = _getIntListLine();
    inputs.addAll([inputs[0], inputs[1]]);

    var peaks = 0;

    for (var i = 1; i <= n; i++) {
      final x = inputs[i - 1], y = inputs[i], z = inputs[i + 1];

      if ((y < x && y < z) || (y > x && y > z)) peaks++;
    }

    print(peaks);
  }
}

String _getLine() =>
    stdin.readLineSync(encoding: Encoding.getByName('utf-8'))?.trim() ?? '';

int _getIntLine() => int.tryParse(_getLine());

List<int> _getIntListLine() => _getLine().split(' ').map(int.parse).toList();

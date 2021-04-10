import 'dart:convert';
import 'dart:io';
import 'dart:math' as math;

void main() {
  final inputs = _getIntListLine();

  print('${_calcMax(inputs)} eh o maior');
}

int _calcMax(List<int> inputs, [int max, int i = 0]) {
  max = math.max(max ?? inputs[i], inputs[++i]);

  if (i < inputs.length - 1) {
    return _calcMax(inputs, max, i);
  }

  return max;
}

String _getLine() {
  final line = stdin.readLineSync(encoding: Encoding.getByName('utf-8'));

  return line.trim();
}

List<int> _getIntListLine() => _getLine().split(' ').map(int.parse).toList();

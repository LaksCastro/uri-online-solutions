import 'dart:convert';
import 'dart:io';
import 'dart:math' as math;

void main() {
  List<int> n;

  while ((n = _getIntListLine()) != null) {
    final a = n[0], b = n[1], p = n[2] / 100;

    final area = a * b;
    final side = math.sqrt(area / p) ~/ 1;

    print(side);
  }
}

String _getLine() =>
    stdin.readLineSync(encoding: Encoding.getByName('utf-8'))?.trim() ?? '';

List<int> _getIntListLine() {
  final line = _getLine().split(' ');

  return line.length == 1 ? null : line.map(int.tryParse).toList();
}

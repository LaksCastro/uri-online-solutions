import 'dart:convert';
import 'dart:io';
import 'dart:math' as math;

const kLimit = 12.0;

void main() {
  List<int> input;

  while ((input = _getIntListLine()) != null) {
    final d = input[0], vf = input[1], vg = input[2];

    final abs = math.sqrt(kLimit * kLimit + d * d);

    final tf = kLimit / vf;

    final tg = abs / vg;

    print(tg <= tf ? 'S' : 'N');
  }
}

String _getLine() =>
    stdin.readLineSync(encoding: Encoding.getByName('utf-8'))?.trim() ?? '';

List<int> _getIntListLine() {
  final line = _getLine();

  return line.isEmpty ? null : line.split(' ').map(int.tryParse).toList();
}

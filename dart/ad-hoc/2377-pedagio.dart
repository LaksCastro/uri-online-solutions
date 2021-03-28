import 'dart:convert';
import 'dart:io';

void main() {
  final ld = _getIntListLine();
  final kp = _getIntListLine();

  final l = ld[0], d = ld[1];
  final k = kp[0], p = kp[1];

  final g = k * l;
  final c = (l ~/ d) * p;

  print(g + c);
}

String _getLine() =>
    stdin.readLineSync(encoding: Encoding.getByName('utf-8'))?.trim() ?? '';

List<int> _getIntListLine() => _getLine().split(' ').map(int.parse).toList();

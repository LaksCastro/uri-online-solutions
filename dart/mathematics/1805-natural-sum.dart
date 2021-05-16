import 'dart:convert';
import 'dart:io';

void main() {
  final ab = _getIntListLine(), a = ab[0], b = ab[1];

  final sum = (a + b) * (b - a + 1) ~/ 2;

  print(sum);
}

String _getLine() =>
    stdin.readLineSync(encoding: Encoding.getByName('utf-8'))?.trim() ?? '';

List<int> _getIntListLine() => _getLine().split(' ').map(int.tryParse).toList();

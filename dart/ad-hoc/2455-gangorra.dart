import 'dart:convert';
import 'dart:io';

void main() {
  final input = _getIntListLine();

  final p1 = input[0];
  final c1 = input[1];
  final p2 = input[2];
  final c2 = input[3];

  final pc1 = p1 * c1;
  final pc2 = p2 * c2;

  final result = pc1 > pc2
      ? -1
      : pc1 == pc2
          ? 0
          : 1;

  print(result);
}

String _getLine() =>
    stdin.readLineSync(encoding: Encoding.getByName('utf-8'))?.trim() ?? '';

List<int> _getIntListLine() => _getLine().split(' ').map(int.parse).toList();

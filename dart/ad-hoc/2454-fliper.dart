import 'dart:convert';
import 'dart:io';

void main() {
  final input = _getIntListLine();

  final p = input[0];
  final r = input[1];

  const ways = <int, Map<int, String>>{
    1: {1: 'A', 0: 'B'},
    0: {0: 'C', 1: 'C'}
  };

  print(ways[p][r]);
}

String _getLine() =>
    stdin.readLineSync(encoding: Encoding.getByName('utf-8'))?.trim() ?? '';

List<int> _getIntListLine() => _getLine().split(' ').map(int.parse).toList();

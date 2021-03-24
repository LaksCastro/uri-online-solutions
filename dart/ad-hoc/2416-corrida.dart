import 'dart:convert';
import 'dart:io';

void main() {
  final ab = _getIntListLine();

  print(ab[0] % ab[1]);
}

String _getLine() =>
    stdin.readLineSync(encoding: Encoding.getByName('utf-8'))?.trim();

List<int> _getIntListLine() => _getLine().split(' ').map(int.parse).toList();

import 'dart:convert';
import 'dart:io';

void main() {
  final n = _getIntLine();
  final alp = _getIntListLine();

  print(alp.any((size) => size < n) ? 'N' : 'S');
}

String _getLine() =>
    stdin.readLineSync(encoding: Encoding.getByName('utf-8'))?.trim() ?? '';

List<int> _getIntListLine() => _getLine().split(' ').map(int.parse).toList();

int _getIntLine() => int.parse(_getLine());

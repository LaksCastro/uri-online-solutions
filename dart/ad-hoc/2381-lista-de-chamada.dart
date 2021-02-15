import 'dart:convert';
import 'dart:io';

void main() {
  final ni = _getIntListLine();

  final n = ni[0];
  final i = ni[1];

  final names = <String>[for (var i = 0; i < n; i++) _getLine()]..sort();

  print(names[i - 1]);
}

String _getLine() =>
    stdin.readLineSync(encoding: Encoding.getByName('utf-8')).trim();

List<int> _getIntListLine() => _getLine().split(' ').map(int.parse).toList();

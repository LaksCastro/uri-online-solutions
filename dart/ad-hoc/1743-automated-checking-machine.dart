import 'dart:convert';
import 'dart:io';

void main() {
  final a = _getIntListLine();
  final b = _getIntListLine();

  for (var i = 0; i < a.length; i++) {
    if (a[i] + b[i] != 1) {
      return print('N');
    }
  }

  print('Y');
}

String _getLine() =>
    stdin.readLineSync(encoding: Encoding.getByName('utf-8'))?.trim() ?? '';

List<int> _getIntListLine() => _getLine().split(' ').map(int.parse).toList();

import 'dart:convert';
import 'dart:io';

void main() {
  final n = _getIntLine();

  for (var i = 0; i < n; i++) {
    final inputs = _getIntListLine();

    final a = inputs[0], b = inputs[1];

    if (a <= b) {
      print('2');
    } else {
      print((a / b).ceil());
    }
  }
}

String _getLine() =>
    stdin.readLineSync(encoding: Encoding.getByName('utf-8'))?.trim() ?? '';

List<int> _getIntListLine() => _getLine().split(' ').map(int.parse).toList();

int _getIntLine() => int.parse(_getLine());

import 'dart:convert';
import 'dart:io';

void main() async {
  final h = _getIntListLine()[0];
  final n = _getIntListLine();

  for (var i = 1; i < n.length; i++) {
    final diff = n[i] - n[i - 1];

    if (diff > h || diff < -h) return print('GAME OVER');
  }

  print('YOU WIN');
}

String _getLine() =>
    stdin.readLineSync(encoding: Encoding.getByName('utf-8'))?.trim() ?? '';

List<int> _getIntListLine() => _getLine().split(' ').map(int.tryParse).toList();

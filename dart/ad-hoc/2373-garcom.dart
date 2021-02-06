import 'dart:convert';
import 'dart:io';

void main() async {
  final n = _getIntLine();

  var t = 0;

  for (var i = 0; i < n; i++) {
    final lc = _getIntListLine();

    final l = lc[0];
    final c = lc[1];

    if (l > c) t += c;
  }

  print(t);
}

String _getLine() =>
    stdin.readLineSync(encoding: Encoding.getByName('utf-8'))?.trim() ?? '';

int _getIntLine() => int.parse(_getLine());

List<int> _getIntListLine() => _getLine().split(' ').map(int.tryParse).toList();

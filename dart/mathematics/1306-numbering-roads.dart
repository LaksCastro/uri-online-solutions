import 'dart:convert';
import 'dart:io';

void main() {
  List<int> rn;

  for (var i = 1; (rn = _getIntListLine()) != null; i++) {
    final r = rn[0], n = rn[1];

    if (r == 0 && n == 0) return;

    final d = (r / n).ceil() - 1;

    if (d > 26) {
      print('Case $i: impossible');
    } else {
      print('Case $i: $d');
    }
  }
}

String _getLine() =>
    stdin.readLineSync(encoding: Encoding.getByName('utf-8'))?.trim() ?? '';

List<int> _getIntListLine() => _getLine().split(' ').map(int.tryParse).toList();

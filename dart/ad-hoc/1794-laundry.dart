import 'dart:convert';
import 'dart:io';

void main() {
  final n = _getIntLine();

  final ln = _getIntListLine(), sn = _getIntListLine();

  final la = ln[0], lb = ln[1];
  final sa = sn[0], sb = sn[1];

  print((n < la || n < sa) || (n > lb || n > sb) ? 'impossivel' : 'possivel');
}

String _getLine() =>
    stdin.readLineSync(encoding: Encoding.getByName('utf-8'))?.trim() ?? '';

int _getIntLine() => int.parse(_getLine());

List<int> _getIntListLine() => _getLine().split(' ').map(int.parse).toList();

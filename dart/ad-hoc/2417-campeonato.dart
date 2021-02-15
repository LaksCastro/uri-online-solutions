import 'dart:convert';
import 'dart:io';

void main() {
  final cccfff = _getIntListLine();

  final cv = cccfff[0];
  final ce = cccfff[1];
  final cs = cccfff[2];

  final fv = cccfff[3];
  final fe = cccfff[4];
  final fs = cccfff[5];

  final cp = cv * 3 + ce;
  final fp = fv * 3 + fe;

  final cpw = cp > fp;
  final fpw = fp > cp;

  final csw = cs > fs;
  final fsw = fs > cs;

  if (cpw) {
    return print('C');
  }

  if (fpw) {
    return print('F');
  }

  if (csw) {
    return print('C');
  }

  if (fsw) {
    return print('F');
  }

  return print('=');
}

String _getLine() =>
    stdin.readLineSync(encoding: Encoding.getByName('utf-8')).trim();

List<int> _getIntListLine() => _getLine().split(' ').map(int.parse).toList();

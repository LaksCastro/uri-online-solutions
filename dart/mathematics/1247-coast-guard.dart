import 'dart:convert';
import 'dart:io';
import 'dart:math' as math;

void main() {
  List<int> dvg;

  const k = 12;

  while ((dvg = _getIntListLine()).isNotEmpty) {
    final d = dvg[0], vf = dvg[1], vg = dvg[2];

    var pg = 0;
    var pf = d;

    while (pg < k && pf < k) {
      if (pg >= pf) {
        print('S');
        break;
      }

      pg += vg;
      pf += vf;
    }
  }
}

String _getLine() =>
    stdin.readLineSync(encoding: Encoding.getByName('utf-8'))?.trim() ?? '';

List<int> _getIntListLine() {
  final line = _getLine();

  return line.isEmpty ? const [] : line.split(' ').map(int.tryParse).toList();
}

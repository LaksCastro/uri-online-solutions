import 'dart:convert';
import 'dart:io';

void main() {
  final n = _getIntLine();

  for (var i = 0; i < n; i++) {
    final inputs = _getDoubleListLine();

    var pa = inputs[0];
    var pb = inputs[1];

    final g1 = inputs[2] / 100;
    final g2 = inputs[3] / 100;

    var years = 0;

    for (; years <= 100 && pa <= pb; years++) {
      pa += (pa * g1).toInt();
      pb += (pb * g2).toInt();
    }

    print(years > 100 ? 'Mais de 1 seculo.' : '$years anos.');
  }
}

String _getLine() =>
    stdin.readLineSync(encoding: Encoding.getByName('utf-8')).trim();

int _getIntLine() => int.parse(_getLine());

List<double> _getDoubleListLine() =>
    _getLine().split(' ').map(double.parse).toList();

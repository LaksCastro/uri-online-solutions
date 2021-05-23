import 'dart:convert';
import 'dart:io';

void main() async {
  final n = _getIntLine();

  double max = 0, maxId;

  for (var i = 0; i < n; i++) {
    final inputs = _getDoubleListLine(), id = inputs[0], y = inputs[1];

    if (y > max) {
      max = y;
      maxId = id;
    }
  }

  print(max >= 8 ? maxId ~/ 1 : 'Minimum note not reached');
}

String _getLine() =>
    stdin.readLineSync(encoding: Encoding.getByName('utf-8'))?.trim() ?? '';

int _getIntLine() => int.parse(_getLine());

List<double> _getDoubleListLine() =>
    _getLine().split(' ').map(double.tryParse).toList();

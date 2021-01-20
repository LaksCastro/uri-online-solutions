import 'dart:convert';
import 'dart:io';

void main() {
  final isSum = _getLine() == 'S';

  const xL = 12, yL = 12;

  var sum = 0.0, av = 0.0;

  for (var y = 0; y < yL; y++) {
    for (var x = 0; x < xL; x++) {
      final i = _getDoubleLine();

      if (x > y && x > yL - y - 1) ({sum += i, ++av});
    }
  }

  print((sum / (isSum ? 1 : (av))).toStringAsFixed(1));
}

String _getLine() =>
    stdin.readLineSync(encoding: Encoding.getByName('utf-8'))?.trim() ?? '';

double _getDoubleLine() => double.parse(_getLine());

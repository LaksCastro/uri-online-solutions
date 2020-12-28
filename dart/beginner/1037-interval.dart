import 'dart:convert';
import 'dart:io';

void main() {
  final n = _getDoubleLine();

  final map = <String, bool Function(double)>{
    'Intervalo [0,25]': (v) => v >= 0 && v <= 25,
    'Intervalo (25,50]': (v) => v > 25 && v <= 50,
    'Intervalo (50,75]': (v) => v > 50 && v <= 75,
    'Intervalo (75,100]': (v) => v > 75 && v <= 100,
    'Fora de intervalo': (v) => v < 0 || v > 100,
  };

  map.forEach((condition, test) => test(n) ? print(condition) : null);
}

String _getLine() {
  final line = stdin.readLineSync(encoding: Encoding.getByName('utf-8'));

  return line.trim();
}

double _getDoubleLine() => double.parse(_getLine());

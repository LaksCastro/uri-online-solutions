import 'dart:convert';
import 'dart:io';
import 'dart:math' as math;

void main() {
  final inputs = _getDoubleListLine();

  final pi = 3.14159;

  final a = inputs[0];
  final b = inputs[1];
  final c = inputs[2];

  final outputs = <String, double>{
    'TRIANGULO': a * c / 2,
    'CIRCULO': pi * math.pow(c, 2),
    'TRAPEZIO': c * (a + b) / 2,
    'QUADRADO': b * b,
    'RETANGULO': a * b,
  };

  outputs.forEach(
    (shape, value) => print('$shape: ${value.toStringAsFixed(3)}'),
  );
}

String _getLine() {
  final line = stdin.readLineSync(encoding: Encoding.getByName('utf-8'));

  return line.trim();
}

List<double> _getDoubleListLine() =>
    _getLine().split(' ').map(double.parse).toList();

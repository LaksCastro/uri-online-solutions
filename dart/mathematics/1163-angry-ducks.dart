import 'dart:convert';
import 'dart:io';
import 'dart:math' as math;

const _pi = 3.14159, _g = 9.80665;

/// [Reference](https://www.youtube.com/watch?v=DJxzPuQlyG4&ab_channel=ProblemasResolvidos)
void main() {
  double h0;

  while ((h0 = _getDoubleLine()) != null) {
    final p = _getIntListLine(), p1 = p[0], p2 = p[1];

    final n = _getIntLine();

    for (var i = 0; i < n; i++) {
      final av = _getDoubleListLine(), d = av[0], v0 = av[1];

      final radian = _degreeToRad(d);

      final vx = v0 * math.cos(radian);
      final vy = v0 * math.sin(radian);

      final a = -_g / 2;
      final b = vy;
      final c = h0;

      final delta = math.pow(b, 2) - 4 * a * c;

      final x1 = (-b + math.sqrt(delta)) / (2 * a);
      final x2 = (-b - math.sqrt(delta)) / (2 * a);

      final ty = math.max(x1, x2);

      final s = vx * ty;

      final display = s.toStringAsFixed(5);

      if (s >= p1 && s <= p2) {
        print('$display -> DUCK');
      } else {
        print('$display -> NUCK');
      }
    }
  }
}

double _degreeToRad(double degree) => degree * _pi / 180;

String _getLine() =>
    stdin.readLineSync(encoding: Encoding.getByName('utf-8'))?.trim() ?? '';

int _getIntLine() => int.tryParse(_getLine());

double _getDoubleLine() => double.tryParse(_getLine());

List<double> _getDoubleListLine() =>
    _getLine().split(' ').map(double.parse).toList();

List<int> _getIntListLine() => _getLine().split(' ').map(int.parse).toList();

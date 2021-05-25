import 'dart:convert';
import 'dart:io';
import 'dart:math' as math;

class Point {
  final double x;
  final double y;

  const Point(this.x, this.y);
}

class Circle extends Point {
  final double r;

  const Circle(double x, double y, this.r) : super(x, y);
}

class Rect extends Point {
  final double w;
  final double h;

  const Rect(double x, double y, this.w, this.h) : super(x, y);
}

const radius = <String, Map<int, double>>{
  'fire': {1: 20.0, 2: 30.0, 3: 50.0},
  'water': {1: 10.0, 2: 25.0, 3: 40.0},
  'earth': {1: 25.0, 2: 55.0, 3: 70.0},
  'air': {1: 18.0, 2: 38.0, 3: 60.0},
};

const damage = <String, int>{
  'fire': 200,
  'water': 300,
  'earth': 400,
  'air': 100,
};

void main() {
  final t = _getIntLine();

  for (var i = 1; i <= t; i++) {
    final e = _getDoubleListLine();

    final enemy = Rect(e[2], e[3], e[0], e[1]);

    final a = _getStringListLine(), m = a[0], l = int.parse(a[1]);

    final attack = Circle(double.parse(a[2]), double.parse(a[3]), radius[m][l]);

    if (_intersects(attack, enemy)) {
      print(damage[m]);
    } else {
      print('0');
    }
  }
}

/// [Resource](https://www.geeksforgeeks.org/check-if-any-point-overlaps-the-given-circle-and-rectangle/)
bool _intersects(Circle c, Rect r) {
  final x1 = r.x, y1 = r.y, x2 = r.x + r.w, y2 = r.y + r.h;

  final xn = math.max(x1, math.min(c.x, x2));
  final yn = math.max(y1, math.min(c.y, y2));

  final dx = xn - c.x;
  final dy = yn - c.y;

  return (dx * dx + dy * dy) <= c.r * c.r;
}

String _getLine() =>
    stdin.readLineSync(encoding: Encoding.getByName('utf-8'))?.trim() ?? '';

int _getIntLine() => int.parse(_getLine());

List<double> _getDoubleListLine() =>
    _getLine().split(' ').map(double.parse).toList();

List<String> _getStringListLine() => _getLine().split(' ');

import 'dart:convert';
import 'dart:io';
import 'dart:math' as math;

/// Create a 2D circle representation
class Circle {
  /// Radius of the circle
  final int r;

  /// x position of center circle
  final int x;

  /// y position of center circle
  final int y;

  /// x and y relative to the center of circle
  /// r is the radius size of the circle
  const Circle({
    this.r,
    this.x,
    this.y,
  });
}

void main() {
  List<int> inputs;

  while ((inputs = _getIntListLine()).isNotEmpty) {
    final r1 = inputs[0];
    final x1 = inputs[1];
    final y1 = inputs[2];
    final r2 = inputs[3];
    final x2 = inputs[4];
    final y2 = inputs[5];

    final external = Circle(r: r1, x: x1, y: y1);
    final internal = Circle(r: r2, x: x2, y: y2);

    final dead = !_isIn(internal, external);

    print(dead ? 'MORTO' : 'RICO');
  }
}

bool _isIn(Circle internal, Circle external) {
  final distance = _getDistance(internal.x, internal.y, external.x, external.y);

  return distance + internal.r <= external.r;
}

double _getDistance(x1, y1, x2, y2) {
  return math.sqrt(math.pow(x2 - x1, 2) + math.pow(y2 - y1, 2));
}

String _getLine() =>
    stdin.readLineSync(encoding: Encoding.getByName('utf-8'))?.trim() ?? '';

List<int> _getIntListLine() {
  final line = _getLine();

  if (line.isEmpty) {
    return const <int>[];
  } else {
    return line.split(' ').map(int.tryParse).toList();
  }
}

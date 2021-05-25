import 'dart:convert';
import 'dart:io';
import 'dart:math' as math;

class Circle {
  final int r;
  final int x;
  final int y;

  const Circle({this.r, this.x, this.y});
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

double _getDistance(int x1, int y1, int x2, int y2) {
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

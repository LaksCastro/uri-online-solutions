import 'dart:convert';
import 'dart:io';
import 'dart:math' as math;

void main() {
  List<int> abc;

  while ((abc = _getIntListLine()).isNotEmpty) {
    final a = abc[0], b = abc[1], c = abc[2];

    final totalVioletsArea = _triangularArea(a, b, c);

    /// [Reference](https://pt.khanacademy.org/math/geometry-home/triangle-properties/perpendicular-bisectors/v/area-circumradius-formula-proof)
    final totalSunFlowersArea =
        _circularArea((a * b * c) / (4 * totalVioletsArea));

    /// [Reference](https://matika.com.br/perguntas/circulo-inscrito)
    final totalRosesArea =
        _circularArea(totalVioletsArea / (((a + b) + c) / 2));

    final rosesArea = totalRosesArea;

    final violetsArea = totalVioletsArea - totalRosesArea;

    final sunflowersArea = totalSunFlowersArea - violetsArea - rosesArea;

    final result =
        '${_format(sunflowersArea)} ${_format(violetsArea)} ${_format(rosesArea)}';

    print(result);
  }
}

String _format(double area) => area.toStringAsFixed(4);

double _circularArea(double r) => 3.1415926535897 * r * r;

/// [Reference](https://en.wikipedia.org/wiki/Heron%27s_formula)
double _triangularArea(int a, int b, int c) =>
    math.sqrt((a + b + c) * (-a + b + c) * (a - b + c) * (a + b - c)) / 4;

String _getLine() =>
    stdin.readLineSync(encoding: Encoding.getByName('utf-8'))?.trim() ?? '';

List<int> _getIntListLine() {
  final line = _getLine();

  return line.isEmpty ? const [] : line.split(' ').map(int.tryParse).toList();
}

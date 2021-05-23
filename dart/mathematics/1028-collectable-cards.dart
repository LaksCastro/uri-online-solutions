import 'dart:convert';
import 'dart:io';
import 'dart:math' as math;

void main() {
  final n = _getIntLine();

  for (var i = 0; i < n; i++) {
    final xy = _getIntListLine(), x = xy[0], y = xy[1];

    final a = math.max(x, y), b = math.min(x, y);

    print(_mdc(a, b));
  }
}

int _mdc(int a, b) {
  final r = a % b;

  if (r == 0) return b;

  return _mdc(b, r);
}

String _getLine() =>
    stdin.readLineSync(encoding: Encoding.getByName('utf-8'))?.trim() ?? '';

int _getIntLine() => int.parse(_getLine());

List<int> _getIntListLine() => _getLine().split(' ').map(int.parse).toList();

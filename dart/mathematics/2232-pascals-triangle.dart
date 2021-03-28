import 'dart:convert';
import 'dart:io';
import 'dart:math' as math;

void main() {
  final n = _getIntLine();

  for (var i = 0; i < n; i++) {
    final lines = _getIntLine();

    var sum = 0;

    for (var j = 0; j < lines; j++) {
      sum += math.pow(2, j);
    }

    print(sum);
  }
}

String _getLine() =>
    stdin.readLineSync(encoding: Encoding.getByName('utf-8'))?.trim() ?? '';

int _getIntLine() => int.parse(_getLine());

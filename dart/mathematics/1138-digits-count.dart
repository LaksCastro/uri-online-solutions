import 'dart:convert';
import 'dart:io';

void main() {
  List<int> inputs;

  while ((inputs = _getIntListLine()) != null) {
    final a = inputs[0], b = inputs[1];

    if (a + b == 0) return;

    var str = '';

    for (var i = a; i <= b; i++) {
      str += '$i';
    }

    for (var i = 0; i <= 9; i++) {
      _print('${RegExp("$i").allMatches(str).length}${i == 9 ? "" : " "}');
    }

    _print('\n');
  }
}

void _print(Object object) => stdout.write(object);

String _getLine() =>
    stdin.readLineSync(encoding: Encoding.getByName('utf-8'))?.trim() ?? '';

List<int> _getIntListLine() {
  final line = _getLine();

  if (line.isEmpty) {
    return const <int>[];
  } else {
    return line.split(' ').map(int.parse).toList();
  }
}

int _factorial(n) => n == 0 ? 1 : n * _factorial(n - 1);

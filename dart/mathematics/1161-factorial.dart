import 'dart:convert';
import 'dart:io';

void main() {
  List<int> inputs;

  while ((inputs = _getIntListLine()).isNotEmpty) {
    final m = inputs[0];
    final n = inputs[1];

    final result = (_factorial(m) + _factorial(n));

    print(result);
  }
}

int _factorial(n) => n == 0 ? 1 : n * _factorial(n - 1);

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

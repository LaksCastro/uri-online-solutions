import 'dart:convert';
import 'dart:io';

void main() {
  List<int> inputs;
  
  while ((inputs = _getIntListLine()) != null) {
    final m = inputs[0];
    final n = inputs[1];

    final result = (_factorial(m) + _factorial(n));

    print(result);
  }
}

String _getLine() {
  final line = stdin.readLineSync(encoding: Encoding.getByName('utf-8'));

  return line.trim();
}

List<int> _getIntListLine() {
  try {
    return _getLine().split(' ').map((o) => int.parse(o)).toList();
  } catch (e) {
    return null;
  }
}

int _factorial(n) => n == 0 ? 1 : n * _factorial(n - 1);

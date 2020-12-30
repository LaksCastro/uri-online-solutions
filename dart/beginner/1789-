import 'dart:convert';
import 'dart:io';

void main() {
  while (_getIntLine() != null) {
    final velocity = _getIntListLine()..sort();

    print(_levelOf(velocity.last));
  }
}

int _levelOf(final int velocity) {
  final levels = <int, bool Function(int)>{
    1: (v) => v < 10,
    2: (v) => v >= 10 && v < 20,
    3: (v) => v >= 20,
  }..removeWhere((level, condition) => !condition(velocity));

  return levels.keys.first;
}

String _getLine() =>
    stdin.readLineSync(encoding: Encoding.getByName('utf-8'))?.trim() ?? '';

int _getIntLine() => int.tryParse(_getLine());

List<int> _getIntListLine() => _getLine().split(' ').map(int.tryParse).toList();

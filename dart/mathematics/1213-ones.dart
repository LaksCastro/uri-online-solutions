import 'dart:convert';
import 'dart:io';

void main() {
  for (var n = _getIntLine(); n != null; n = _getIntLine()) {
    (() {
      for (var i = 1, digits = 1; true; i = (i * 10 + 1) % n, digits++) {
        if (i % n == 0) return print(digits);
      }
    })();
  }
}

String _getLine() =>
    stdin.readLineSync(encoding: Encoding.getByName('utf-8'))?.trim() ?? '';

int _getIntLine() {
  final line = _getLine();

  return line.isEmpty ? null : int.parse(line);
}

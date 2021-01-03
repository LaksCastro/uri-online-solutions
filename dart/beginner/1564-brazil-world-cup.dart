import 'dart:convert';
import 'dart:io';

void main() {
  int n;

  while ((n = _getIntLine()) != -1) {
    print(n == 0 ? 'vai ter copa!' : 'vai ter duas!');
  }
}

String _getLine() =>
    stdin.readLineSync(encoding: Encoding.getByName('utf-8'))?.trim() ?? '';

int _getIntLine() {
  final line = _getLine();

  return line.isEmpty ? -1 : int.parse(line);
}

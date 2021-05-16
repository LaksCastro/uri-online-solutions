import 'dart:convert';
import 'dart:io';

void main() {
  int n;

  while ((n = _getIntLine()) != 0) {
    final max = (n / 2).ceil();

    final matrix = List<List<int>>.filled(n, List.filled(n, null));

    for (var y = 0; y < n; y++) {
      for (var x = 0; x < n; x++) {}
    }

    for (var i = 0; i < max; i++) {
      for (var x = 0; x < n - i; x++) {
        for (var y = 0; y < n; y++) {
          final ax = x + i;
          final ay = y + i;

          matrix[ax][ay] = i;
        }
      }
    }

    print(matrix);
  }
}

String _getLine() =>
    stdin.readLineSync(encoding: Encoding.getByName('utf-8'))?.trim() ?? '';

int _getIntLine() => int.parse(_getLine());

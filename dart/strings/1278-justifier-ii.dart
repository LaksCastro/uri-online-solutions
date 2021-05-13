import 'dart:convert';
import 'dart:io';

void main() {
  int n, first = 1;

  while ((n = _getIntLine()) != 0) {
    if (first == 1) {
      first = 0;
    } else {
      print('');
    }

    final words = <String>[];
    var max = 0;

    for (var i = 0; i < n; i++) {
      words.add(_getLine().replaceAll(RegExp('  +'), ' '));

      if (words.last.length > max) max = words.last.length;
    }

    for (final word in words) {
      print(word.padLeft(max));
    }
  }
}

String _getLine() =>
    stdin.readLineSync(encoding: Encoding.getByName('utf-8'))?.trim() ?? '';

int _getIntLine() => int.parse(_getLine());

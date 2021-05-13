import 'dart:collection';
import 'dart:convert';
import 'dart:io';

void main() {
  final n = _getIntLine();

  final onlyLetters = RegExp('[a-z]');

  for (var i = 0; i < n; i++) {
    final ocurrences = SplayTreeMap<String, int>();

    var max = 0;

    final line = _getLine().toLowerCase();

    for (final char in line.split('')) {
      if (!onlyLetters.hasMatch(char) || ocurrences[char] != null) continue;

      final matches = char.allMatches(line).length;

      if (matches < max) continue;

      if (matches > max) ocurrences.clear();

      ocurrences[char] = matches;
      max = matches;
    }

    print(ocurrences.keys.join());
  }
}

String _getLine() =>
    stdin.readLineSync(encoding: Encoding.getByName('utf-8')) ?? '';

int _getIntLine() => int.parse(_getLine());

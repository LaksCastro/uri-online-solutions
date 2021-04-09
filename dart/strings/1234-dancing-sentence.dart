import 'dart:convert';
import 'dart:io';

void main() {
  String input;

  while ((input = _getLine()).isNotEmpty) {
    final string = input.split('');

    for (var i = 0, state = false; i < string.length; i++) {
      if (string[i] == ' ') continue;

      string[i] = _normalize(string[i], state);

      state = !state;
    }

    print(string.join(''));
  }
}

String _normalize(String source, bool state) =>
    state ? source.toLowerCase() : source.toUpperCase();

String _getLine() =>
    stdin.readLineSync(encoding: Encoding.getByName('utf-8')) ?? '';

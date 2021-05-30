import 'dart:convert';
import 'dart:io';

void main() {
  final n = _getIntLine();

  for (var i = 0; i < n; i++) {
    final s = _getLine();

    print(_message(s));
  }
}

String _message(String s) {
  final n = s.trim();

  if (n.isEmpty) return '';

  final r = RegExp(r'(?<=\s)[a-z]');

  return '${n[0]}${r.allMatches(n).map((e) => n[e.start]).join()}';
}

String _getLine() =>
    stdin.readLineSync(encoding: Encoding.getByName('utf-8')) ?? '';

int _getIntLine() => int.parse(_getLine());

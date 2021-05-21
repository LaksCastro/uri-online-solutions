import 'dart:convert';
import 'dart:io';

void main() {
  final line = _getLine();

  print(line.length > 140 ? 'MUTE' : 'TWEET');
}

String _getLine() => stdin.readLineSync(encoding: Encoding.getByName('utf-8'));

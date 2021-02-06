import 'dart:convert';
import 'dart:io';

void main() async {
  final n = _getIntLine();

  for (var i = 0; i < n; i++) {
    print('I am Toorg!');
  }
}

String _getLine() =>
    stdin.readLineSync(encoding: Encoding.getByName('utf-8'))?.trim() ?? '';

int _getIntLine() => int.parse(_getLine());

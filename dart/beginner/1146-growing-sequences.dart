import 'dart:convert';
import 'dart:io';

void main() {
  int input;

  while ((input = _getIntLine()) != 0) {
    print(_sequence(input));
  }
}

String _sequence(int n) => n == 1 ? '$n' : '${_sequence(n - 1)} $n';

String _getLine() =>
    stdin.readLineSync(encoding: Encoding.getByName('utf-8')).trim();

int _getIntLine() => int.parse(_getLine());

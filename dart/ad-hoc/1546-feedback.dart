import 'dart:convert';
import 'dart:io';

void main() {
  const team = <int, String>{
    1: 'Rolien',
    2: 'Naej',
    3: 'Elehcim',
    4: 'Odranoel',
  };

  final a = _getIntLine();

  for (var i = 0; i < a; i++) {
    final b = _getIntLine();

    for (var i = 0; i < b; i++) {
      final x = _getIntLine();

      print(team[x]);
    }
  }
}

String _getLine() =>
    stdin.readLineSync(encoding: Encoding.getByName('utf-8'))?.trim() ?? '';

int _getIntLine() => int.parse(_getLine());

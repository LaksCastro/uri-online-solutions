import 'dart:convert';
import 'dart:io';

const game = <List<String>>[
  ['tesoura', 'papel'],
  ['papel', 'pedra'],
  ['pedra', 'lagarto'],
  ['lagarto', 'Spock'],
  ['Spock', 'tesoura'],
  ['tesoura', 'lagarto'],
  ['lagarto', 'papel'],
  ['papel', 'Spock'],
  ['Spock', 'pedra'],
  ['pedra', 'tesoura'],
];

void main() {
  final n = _getIntLine();

  for (var i = 1; i <= n; i++) {
    final inputs = _getStringListLine();

    final a = inputs[0];
    final b = inputs[1];

    if (a == b) {
      print('Caso #$i: De novo!');
    } else {
      for (final possibility in game) {
        if (possibility[0] == a && possibility[1] == b) {
          print('Caso #$i: Bazinga!');
        } else if (possibility[1] == a && possibility[0] == b) {
          print('Caso #$i: Raj trapaceou!');
        }
      }
    }
  }
}

String _getLine() =>
    stdin.readLineSync(encoding: Encoding.getByName('utf-8'))?.trim() ?? '';

List<String> _getStringListLine() => _getLine().split(' ');

int _getIntLine() => int.parse(_getLine());

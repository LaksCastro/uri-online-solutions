import 'dart:convert';
import 'dart:io';

void main() {
  final n = _getIntListLine(), p = n[0], x = n[1], y = n[2], r = n[3], a = n[4];

  final odd = p == 0, isOdd = (x + y) % 2 != 0, cheat = r != 0, report = a == 1;

  if (!cheat && !report) {
    if (odd != isOdd) return _player2();

    return _player1();
  }

  if (report && !cheat) return _player1();
  if (!report && cheat) return _player1();
  if (report && cheat) return _player2();
}

void _player1() => print('Jogador 1 ganha!');
void _player2() => print('Jogador 2 ganha!');

String _getLine() =>
    stdin.readLineSync(encoding: Encoding.getByName('utf-8'))?.trim() ?? '';

List<int> _getIntListLine() => _getLine().split(' ').map(int.tryParse).toList();

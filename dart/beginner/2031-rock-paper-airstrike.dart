import 'dart:convert';
import 'dart:io';

void main() async {
  final n = _getIntLine();

  const games = <String, String>{
    'ataque.pedra': 'Jogador 1 venceu',
    'ataque.papel': 'Jogador 1 venceu',
    'ataque.ataque': 'Aniquilacao mutua',
    'pedra.pedra': 'Sem ganhador',
    'pedra.ataque': 'Jogador 2 venceu',
    'pedra.papel': 'Jogador 1 venceu',
    'papel.papel': 'Ambos venceram',
    'papel.ataque': 'Jogador 2 venceu',
    'papel.pedra': 'Jogador 2 venceu',
  };

  for (var i = 0; i < n; i++) {
    final a = _getLine(), b = _getLine();

    print(games['$a.$b']);
  }
}

String _getLine() =>
    stdin.readLineSync(encoding: Encoding.getByName('utf-8'))?.trim() ?? '';

int _getIntLine() => int.parse(_getLine());

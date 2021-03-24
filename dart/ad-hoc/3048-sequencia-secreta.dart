import 'dart:convert';
import 'dart:io';

void main() {
  final n = _getIntLine();

  final hash = <int, List<int>>{};

  for (var i = 0; i < n; i++) {
    final item = _getIntLine();

    if (hash[item] == null) {
      hash[item] = [item];
    }

    for (final key in hash.keys) {
      if (hash[key].last != item) {
        hash[key].add(item);
      }
    }
  }

  final result = hash.values.toList()..sort((a, b) => b.length - a.length);

  print(result.first.length);
}

String _getLine() =>
    stdin.readLineSync(encoding: Encoding.getByName('utf-8'))?.trim() ?? '';

int _getIntLine() => int.tryParse(_getLine());

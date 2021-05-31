import 'dart:convert';
import 'dart:io';

class Sequence {
  final int count;
  final String elements;

  const Sequence(this.count, this.elements);
}

void main() {
  int n, i = 0;

  while ((n = _getIntLine()) != null) {
    final s = _sequence(n);

    final a = 'Caso ${++i}: ';
    final b = '${s.count > 1 ? "${s.count} numeros" : "${s.count} numero"}';

    print('$a$b');
    print('${s.elements}');
  }
}

Sequence _sequence(int n,
    [int c = 0, int i = 0, String elements = '', int count = 0]) {
  elements += '$c';
  count++;

  Sequence result;

  if (i + 1 < c) {
    elements += ' ';
    result = _sequence(n, c, i + 1, elements, count);
  } else if (c < n) {
    elements += ' ';
    result = _sequence(n, c + 1, 0, elements, count);
  }

  if (n == 0 || (c == n && i + 1 == c)) {
    elements += '\n';

    return Sequence(count, elements);
  }

  return result;
}

String _getLine() =>
    stdin.readLineSync(encoding: Encoding.getByName('utf-8'))?.trim();

int _getIntLine() => int.tryParse(_getLine());

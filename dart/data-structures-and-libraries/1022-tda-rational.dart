import 'dart:convert';
import 'dart:io';
import 'dart:math' as math;

void main() {
  final n = _getIntLine();

  final handlers = <String, Map<String, int> Function(int, int, int, int)>{
    '+': (n1, d1, n2, d2) {
      final n = n1 * d2 + n2 * d1, d = d1 * d2;

      return {'n': n, 'd': d};
    },
    '-': (n1, d1, n2, d2) {
      final n = n1 * d2 - n2 * d1, d = d1 * d2;

      return {'n': n, 'd': d};
    },
    '*': (n1, d1, n2, d2) {
      final n = n1 * n2, d = d1 * d2;

      return {'n': n, 'd': d};
    },
    '/': (n1, d1, n2, d2) {
      final n = n1 * d2, d = n2 * d1;

      return {'n': n, 'd': d};
    },
  };

  for (var i = 0; i < n; i++) {
    final expression = _getStringListLine();

    final n1 = int.parse(expression[0]),
        d1 = int.parse(expression[2]),
        op = expression[3],
        n2 = int.parse(expression[4]),
        d2 = int.parse(expression[6]);

    final result = handlers[op](n1, d1, n2, d2);

    var n = result['n'], d = result['d'];

    final left = _display(n, d);

    for (var i = math.max(n, d); i > 1; i--) {
      if (n % i == 0 && d % i == 0) {
        n ~/= i;
        d ~/= i;
      }
    }

    final right = _display(n, d);

    print('$left = $right');
  }
}

String _display(int n, d) => '$n/$d';

String _getLine() =>
    stdin.readLineSync(encoding: Encoding.getByName('utf-8'))?.trim() ?? '';

List<String> _getStringListLine() => _getLine().split(' ');

int _getIntLine() => int.tryParse(_getLine());

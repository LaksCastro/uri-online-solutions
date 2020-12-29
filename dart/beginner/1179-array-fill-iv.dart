import 'dart:convert';
import 'dart:io';

void main() {
  final odd = <int>[];
  final even = <int>[];

  for (var i = 0, it = 15, last = false; i < it; i++, last = i == it - 1) {
    final n = _getIntLine();

    final targetList = _isEven(n) ? even : odd;

    targetList.add(n);

    if (targetList.length >= 5) {
      _displayList(targetList);
      _emptyList(targetList);
    }

    if (last) {
      _displayList(odd);
      _displayList(even);
    }
  }
}

bool _isEven(int n) => n % 2 == 0;

void _displayList(List<int> list) {
  final message = _isEven(list.first) ? 'par' : 'impar';

  for (var i = 0; i < list.length; i++) {
    final item = list[i];

    print('$message[$i] = $item');
  }
}

void _emptyList(List<int> list) => list.removeRange(0, list.length);

String _getLine() =>
    stdin.readLineSync(encoding: Encoding.getByName('utf-8')).trim();

int _getIntLine() => int.parse(_getLine());

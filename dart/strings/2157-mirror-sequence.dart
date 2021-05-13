import 'dart:convert';
import 'dart:io';

void main() {
  final n = _getIntLine();

  for (var i = 0; i < n; i++) {
    final ab = _getIntListLine(), a = ab[0], b = ab[1];

    for (var i = a; i <= b; i++) {
      _print(i);
    }

    for (var i = b; i >= a; i--) {
      _print(i.toString().split('').reversed.join());
    }

    print('');
  }
}

void _print(Object object) => stdout.write(object);

String _getLine() =>
    stdin.readLineSync(encoding: Encoding.getByName('utf-8')) ?? '';

int _getIntLine() => int.parse(_getLine());

List<int> _getIntListLine() => _getLine().split(' ').map(int.parse).toList();

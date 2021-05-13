import 'dart:convert';
import 'dart:io';

void main() {
  final n = _getIntLine();

  for (var i = 0; i < n; i++) {
    final a = _getLine(), b = _getLine() + _getLine();

    final sa = _sortString(a), sb = _sortString(b);

    if (b.length > a.length || !_hasMatch(sa, sb)) {
      print('CHEATER');
    } else {
      final regex = RegExp('[$sb]');

      print(sa.replaceAll(regex, ''));
    }
  }
}

String _sortString(String target) {
  final sorted = target.split('')..sort();

  return sorted.join();
}

bool _hasMatch(String source, String text) {
  final regexp = text.split('').join('.*');

  return RegExp(regexp).hasMatch(source);
}

String _getLine() =>
    stdin.readLineSync(encoding: Encoding.getByName('utf-8')) ?? '';

int _getIntLine() => int.parse(_getLine());

import 'dart:convert';
import 'dart:io';

void main() {
  final n = _getIntLine();

  for (var i = 1; i <= n; i++) {
    final vr = _getLine().split(' ');

    final value = vr[0], radix = vr[1];

    final allRadices = <String, int>{'dec': 10, 'hex': 16, 'bin': 2};

    print('Case $i:');

    for (final currentRadix in allRadices.keys) {
      if (currentRadix == radix) continue;

      print(
        '''${_toRadix(value, allRadices[radix], allRadices[currentRadix])} $currentRadix''',
      );
    }

    print('');
  }
}

String _toRadix(String value, int inputRadix, int outputRadix) =>
    int.parse(value, radix: inputRadix).toRadixString(outputRadix);

String _getLine() =>
    stdin.readLineSync(encoding: Encoding.getByName('utf-8'))?.trim() ?? '';

int _getIntLine() => int.parse(_getLine());

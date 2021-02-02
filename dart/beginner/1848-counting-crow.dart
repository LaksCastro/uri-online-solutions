import 'dart:convert';
import 'dart:io';

void main() async {
  var p = 0, r = 0;

  while (p < 3) {
    final input = _getLine().replaceAll('*', '1').replaceAll('-', '0');

    if (input == 'caw caw') {
      ({print(r), r = 0, p++});
    } else {
      r += int.parse(input, radix: 2);
    }
  }
}

String _getLine() =>
    stdin.readLineSync(encoding: Encoding.getByName('utf-8'))?.trim() ?? '';

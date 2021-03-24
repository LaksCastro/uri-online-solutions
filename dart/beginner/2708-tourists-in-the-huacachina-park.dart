import 'dart:convert';
import 'dart:io';

void main() {
  String input;

  var j = 0;
  var p = 0;

  while ((input = _getLine()) != null) {
    final al = input.split(' ');

    final action = al[0];

    if (action == 'ABEND') {
      ({print(p), print(j)});

      break;
    }

    final length = int.parse(al[1]);

    if (action == 'SALIDA') {
      ({p += length, j++});
    } else {
      ({p -= length, j--});
    }
  }
}

String _getLine() =>
    stdin.readLineSync(encoding: Encoding.getByName('utf-8'))?.trim();

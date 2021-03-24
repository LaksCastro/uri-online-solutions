import 'dart:convert';
import 'dart:io';

const tops = [1, 3, 5, 10, 25, 50, 100];

void main() {
  final n = _getIntLine();

  int top;

  for (var i = 0; i < tops.length; i++) {
    if (n <= tops[i]) {
      top = tops[i];
      break;
    }
  }

  print('Top $top');
}

String _getLine() =>
    stdin.readLineSync(encoding: Encoding.getByName('utf-8'))?.trim() ?? '';

int _getIntLine() => int.tryParse(_getLine());

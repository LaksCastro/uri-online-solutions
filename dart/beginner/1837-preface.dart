import 'dart:convert';
import 'dart:io';

void main() {
  final inputs = _getIntListLine();

  final a = inputs[0];
  final b = inputs[1];

  final qd = a / b;

  final r = a % b;
  final q = a == b * qd.ceil() + r ? qd.ceil() : qd.floor();

  print('$q $r');
}

String _getLine() =>
    stdin.readLineSync(encoding: Encoding.getByName('utf-8'))?.trim() ?? '';

List<int> _getIntListLine() => _getLine().split(' ').map(int.parse).toList();

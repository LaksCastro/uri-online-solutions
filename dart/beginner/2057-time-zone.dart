import 'dart:convert';
import 'dart:io';

const kTime = 24;

void main() {
  final n = _getIntListLine();

  final sum = n.reduce((ac, e) => ac + e);

  print(sum < 0 ? sum + kTime : sum % kTime);
}

String _getLine() =>
    stdin.readLineSync(encoding: Encoding.getByName('utf-8'))?.trim() ?? '';

List<int> _getIntListLine() => _getLine().split(' ').map(int.tryParse).toList();

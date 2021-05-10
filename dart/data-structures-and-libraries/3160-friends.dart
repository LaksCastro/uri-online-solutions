import 'dart:convert';
import 'dart:io';

void main() {
  final l1 = _getStringListLine();
  final l2 = _getStringListLine();

  final target = _getLine();

  final index = l1.indexOf(target);

  if (target == 'nao') {
    l1.addAll(l2);
  } else {
    l1.insertAll(index, l2);
  }

  print(l1.map((name) => name).toList().join(' '));
}

String _getLine() =>
    stdin.readLineSync(encoding: Encoding.getByName('utf-8'))?.trim() ?? '';

List<String> _getStringListLine() => _getLine().split(' ');

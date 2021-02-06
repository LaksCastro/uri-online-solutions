import 'dart:convert';
import 'dart:io';

void main() async {
  final n = _getIntListLine();

  print(n.indexOf(1) + 1);
}

String _getLine() =>
    stdin.readLineSync(encoding: Encoding.getByName('utf-8'))?.trim() ?? '';

List<int> _getIntListLine() => _getLine().split(' ').map(int.tryParse).toList();

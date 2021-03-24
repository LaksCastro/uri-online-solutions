import 'dart:convert';
import 'dart:io';

const tops = [1, 3, 5, 10, 25, 50, 100];

void main() {
  List<int> ab;

  while ((ab = _getIntListLine()) != null) {
    final x = ab[0];
    final y = ab[1];

    if (x + y == 0) break;

    print(x * y);
  }
}

String _getLine() =>
    stdin.readLineSync(encoding: Encoding.getByName('utf-8'))?.trim() ?? '';

List<int> _getIntListLine() => _getLine().split(' ').map(int.tryParse).toList();

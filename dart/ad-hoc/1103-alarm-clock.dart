import 'dart:convert';
import 'dart:io';

void main() async {
  List<int> input;

  while ((input = _getIntListLine()).any((inp) => inp != 0)) {
    var h1 = input[0], m1 = input[1];

    var h2 = input[2], m2 = input[3];

    final nextDay = h1 > h2 || (h1 == h2 && m1 > m2);

    final year = DateTime.now().year;

    final a = DateTime(year, 1, 1, h1, m1);
    final b = DateTime(year, 1, nextDay ? 2 : 1, h2, m2);

    final diff = b.difference(a);

    print(diff.inMinutes);
  }
}

String _getLine() =>
    stdin.readLineSync(encoding: Encoding.getByName('utf-8'))?.trim() ?? '';

List<int> _getIntListLine() => _getLine().split(' ').map(int.tryParse).toList();

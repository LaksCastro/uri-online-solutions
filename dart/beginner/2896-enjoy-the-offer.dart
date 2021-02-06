import 'dart:convert';
import 'dart:io';

void main() async {
  final _ = _getIntLine();

  List<int> nk;

  while ((nk = _getIntListLine()).isNotEmpty) {
    final n = nk[0];
    final k = nk[1];

    final a = n % k;
    final b = n ~/ k;

    print(a + b);
  }
}

String _getLine() =>
    stdin.readLineSync(encoding: Encoding.getByName('utf-8'))?.trim() ?? '';

int _getIntLine() => int.parse(_getLine());

List<int> _getIntListLine() {
  final line = _getLine();

  return line.isEmpty ? <int>[] : line.split(' ').map(int.tryParse).toList();
}

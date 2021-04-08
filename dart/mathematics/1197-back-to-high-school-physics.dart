import 'dart:convert';
import 'dart:io';

void main() async {
  List<int> inputs;

  while ((inputs = _getIntListLine()).isNotEmpty) {
    final v = inputs[0], t = inputs[1];

    print(v * t * 2);
  }
}

String _getLine() =>
    stdin.readLineSync(encoding: Encoding.getByName('utf-8'))?.trim() ?? '';

List<int> _getIntListLine() {
  final line = _getLine();

  if (line.isEmpty) {
    return const <int>[];
  } else {
    return line.split(' ').map(int.tryParse).toList();
  }
}

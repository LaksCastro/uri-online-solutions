import 'dart:convert';
import 'dart:io';

void main() {
  int n;

  const answers = <int, String>{0: 'A', 1: 'B', 2: 'C', 3: 'D', 4: 'E'};

  while ((n = _getIntLine()) != 0) {
    for (var i = 0; i < n; i++) {
      final paper = _getIntListLine();

      final answer = paper.where((answer) => answer <= 127).toList();

      print(answer.length == 1 ? answers[paper.indexOf(answer[0])] : '*');
    }
  }
}

String _getLine() =>
    stdin.readLineSync(encoding: Encoding.getByName('utf-8'))?.trim() ?? '';

int _getIntLine() => int.parse(_getLine());

List<int> _getIntListLine() => _getLine().split(' ').map(int.parse).toList();

import 'dart:convert';
import 'dart:io';

void main() {
  final n = _getIntLine();

  for (var i = 0; i < n; i++) {
    var total = 0;

    final shootLength = _getIntLine();
    final shoots = _getIntListLine();
    final jumps = _getLine();

    for (var i = 0; i < shootLength; i++) {
      final backgroundHit = 1 <= shoots[i] && shoots[i] <= 2 && jumps[i] == 'S';
      final airHit = shoots[i] > 2 && jumps[i] == 'J';

      total += backgroundHit || airHit ? 1 : 0;
    }

    print(total);
  }
}

String _getLine() =>
    stdin.readLineSync(encoding: Encoding.getByName('utf-8')).trim();

List<int> _getIntListLine() => _getLine().split(' ').map(int.parse).toList();

int _getIntLine() => int.parse(_getLine());

import 'dart:convert';
import 'dart:io';

const _size = 9;
const _blockSum = 1 + 2 + 3 + 4 + 5 + 6 + 7 + 8 + 9;
const _blockSize = _size ~/ 3;

void main() {
  final n = _getIntLine();

  for (var i = 0; i < n; i++) {
    print('Instancia ${i + 1}');

    final matrix = <Set<int>>[];
    final blocks = <int, int>{};

    var valid = true;

    for (var j = 0; j < _size && valid; j++) {
      matrix.add(_getIntSetLine());

      if (matrix.last.length < _size) {
        valid = false;
      }
    }

    for (var y = 0, sum = 0; y < _size && valid; y++, sum = 0) {
      for (var j = 0; j < _size && valid; j++) {
        sum += matrix[j].elementAt(y);
      }

      if (sum != _blockSum) valid = false;

      for (var x = 0; x < _size && valid; x++) {
        final current = matrix[y].elementAt(x);

        final blockX = _calcBlockIndexX(x);
        final blockY = _calcBlockIndexY(y);

        final nextBlockX = _calcBlockIndexX((x + 1) % _size);

        final blockIndex = blockX + blockY;

        blocks[blockIndex] = (blocks[blockIndex] ?? 0) + current;

        if (blockX != nextBlockX && ((y + 1) % _blockSize == 0)) {
          if (blocks[blockIndex] != _blockSum) {
            valid = false;
          }
        }
      }
    }

    if (valid) {
      print('SIM\n');
    } else {
      print('NAO\n');
    }
  }
}

int _calcBlockIndexX(int x) => x ~/ _blockSize;
int _calcBlockIndexY(int y) => y ~/ _blockSize * _blockSize;

String _getLine() =>
    stdin.readLineSync(encoding: Encoding.getByName('utf-8'))?.trim() ?? '';

int _getIntLine() => int.parse(_getLine());

Set<int> _getIntSetLine() => _getLine().split(' ').map(int.parse).toSet();

import 'dart:convert';
import 'dart:io';

void main() {
  final n = _getIntLine();
  final ts = _getIntListLine();

  print(_minorI(n, ts));
}

int _minorI(int n, List<int> ts, [int mI, int i = 0]) => i < ts.length
    ? _minorI(
        n,
        ts,
        mI = mI == null
            ? i
            : ts[i] < ts[mI]
                ? i
                : mI,
        ++i,
      )
    : ++mI;

String _getLine() =>
    stdin.readLineSync(encoding: Encoding.getByName('utf-8'))?.trim() ?? '';

List<int> _getIntListLine() => _getLine().split(' ').map(int.parse).toList();

int _getIntLine() => int.parse(_getLine());

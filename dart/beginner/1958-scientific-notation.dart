import 'dart:convert';
import 'dart:io';
import 'dart:math' as math;

const _kWithNothing = '';

void main() {
  final oneToNine = RegExp(r'[1-9]');
  final nonNumeric = RegExp(r'[^\d]');

  final x = _getLine();
  final xAbs = x.replaceAll(nonNumeric, _kWithNothing);
  final lower = xAbs.startsWith('0');
  final symbolX = x[0] == '-' ? '-' : '+';
  final symbolP = lower ? '-' : '+';

  String charAt(int i) => i < x.length ? x[i] : null;

  bool itsOkay() =>
      (charAt(1) == '.' || charAt(2) == '.' || x.length <= 3) &&
      (() {
        final y = double.parse(x).abs();

        return y >= 1 && y < 10;
      })();

  if (itsOkay()) {
    return _printIt(double.parse(x).abs(), symbolX, symbolP, 0);
  }

  final p = lower
      ? oneToNine.firstMatch(xAbs)?.start ?? 0
      : math.max(xAbs.length - 1, 0);

  final safeX = lower
      ? '${xAbs.substring(p, p + 1)}.${xAbs.substring(p + 1)}'
      : '${xAbs[0]}.${xAbs.substring(1)}';

  _printIt(double.parse(safeX), symbolX, symbolP, p);
}

void _printIt(double x, String symbolX, String symbolP, int p) {
  final a = '$symbolX';
  final b = '${x.toStringAsFixed(4)}E';
  final c = '${p == 0 ? "+" : symbolP}';
  final d = '${p.toString().padLeft(2, "0")}';

  return print('$a$b$c$d');
}

String _getLine() =>
    stdin.readLineSync(encoding: Encoding.getByName('utf-8'))?.trim() ?? '';

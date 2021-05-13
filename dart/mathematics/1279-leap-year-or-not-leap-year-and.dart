import 'dart:convert';
import 'dart:io';

void main() {
  BigInt year;

  var first = true;

  while ((year = _getBigIntLine()) != null) {
    final isLeap = _isLeapYear(year);
    final isHuluculu = _isHuluculu(year);
    final isBulukulu = _isBulukulu(year);

    if (first) {
      first = false;
    } else {
      print('');
    }

    if (!isLeap && !isHuluculu) {
      print('This is an ordinary year.');
    } else {
      if (isLeap) print('This is leap year.');
      if (isHuluculu) print('This is huluculu festival year.');
      if (isBulukulu) print('This is bulukulu festival year.');
    }
  }
}

bool _isLeapYear(BigInt year) {
  return _isDivisibleByFromNum(year, 400) ||
      (_isDivisibleByFromNum(year, 4) && !_isDivisibleByFromNum(year, 100));
}

bool _isDivisibleBy(BigInt x, BigInt y) => x % y == BigInt.from(0);
bool _isDivisibleByFromNum(BigInt x, num y) =>
    _isDivisibleBy(x, BigInt.from(y));

bool _isHuluculu(BigInt year) => _isDivisibleByFromNum(year, 15);
bool _isBulukulu(BigInt year) =>
    _isDivisibleByFromNum(year, 55) && _isLeapYear(year);

String _getLine() =>
    stdin.readLineSync(encoding: Encoding.getByName('utf-8'))?.trim() ?? '';

BigInt _getBigIntLine() => BigInt.tryParse(_getLine());

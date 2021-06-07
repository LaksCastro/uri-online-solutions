import 'dart:convert';
import 'dart:io';

void main() {
  double n;

  while ((n = _getDoubleLine()) != null) {
    print(_phi(n) ~/ 2);
  }
}

double _phi(double n) {
  var result = n;

  for (var i = 2; i * i <= n; i++) {
    if (n % i == 0) {
      while (n % i == 0) {
        n /= i;
      }

      result -= result / i;
    }
  }

  if (n > 1) result -= result / n;

  return result;
}

// bool _isMultipleOf(double n, double t) => n % t == 0;

// bool _isOdd(double n) => !_isMultipleOf(n, 2);

// bool _isEven(double n) => !_isOdd(n);

// bool _isPrime(double n) {
//   for (var d = 2; d * d <= n; d++) {
//     if (n % d == 0) return false;
//   }

//   return true;
// }

String _getLine() =>
    stdin.readLineSync(encoding: Encoding.getByName('utf-8'))?.trim();

double _getDoubleLine() => double.tryParse(_getLine());

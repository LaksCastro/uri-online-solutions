// import 'dart:convert';
// import 'dart:io';

// void main() {
//   int n;

//   while ((n = _getIntLine()) != 0) {
//     var c = 0;

//     for (var x = 0; x < n; x++) {
//       for (var y = 0; y < n; y++) {
//         if (x == c || x == n - c - 1 || y == c || y == n - c - 1) {
//           _print(c + 1);
//         }
//       }

//       _print('\n');
//       c++;
//     }

//     _print('\n');
//   }
// }

// void _print(Object object) => stdout.write(object);

// String _getLine() =>
//     stdin.readLineSync(encoding: Encoding.getByName('utf-8')).trim();

// int _getIntLine() => int.parse(_getLine());

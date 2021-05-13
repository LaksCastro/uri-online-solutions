// import 'dart:convert';
// import 'dart:io';

// void main() {
//   const cc = 4;

//   final n = _getIntLine();
//   final categories = [for (var i = 0; i < 5; i++) 0];

//   for (var i = 0; i < n; i++) {
//     _getLine(); // 'Palpites'
//     final setA = <String>[for (var i = 1; i <= cc; i++) _getLine()];

//     _getLine(); // 'Vencedores'
//     final setB = <String>[for (var i = 1; i <= cc; i++) _getLine()];

//     for (var i = 0; i < cc; i++) {
//       if (setA[i] == setB[i]) categories[i]++;
//     }
//   }

//   var min = categories[0], count = 1;

//   for (var i = 1; i < cc; ++i) {
//     if (categories[i] < min) {
//       min = categories[i];
//       count = 1;
//     } else {
//       count++;
//     }
//   }

//   for (var i = 0; i < cc; ++i) {
//     if (categories[i] == min) {
//       _print('${i + 1}${--count != 0 ? " " : "\n"}');
//     }
//   }
// }

// void _print(Object object) => stdout.write(object);

// String _getLine() =>
//     stdin.readLineSync(encoding: Encoding.getByName('utf-8'))?.trim() ?? '';

// int _getIntLine() => int.tryParse(_getLine());

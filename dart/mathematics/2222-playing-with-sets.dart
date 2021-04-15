// import 'dart:convert';
// import 'dart:io';

// void main() {
//   const ops = <int, Set<int> Function(Set<int>, Set<int>)>{
//     1: _intersect,
//     2: _union,
//   };

//   final t = _getIntLine();

//   for (var i = 0; i < t; i++) {
//     final n = _getIntLine();

//     final sets = <int, Set<int>>{};

//     for (var j = 1; j <= n; j++) {
//       final sequence = _getIntListLine()..removeAt(0);

//       sets[j] != null ? sets[j].addAll(sequence) : sets[j] = sequence.toSet();
//     }

//     final q = _getIntLine();

//     for (var j = 0; j < q; j++) {
//       final op = _getIntListLine(), p = op[0], x = op[1], y = op[2];

//       print(ops[p](sets[x], sets[y]).length);
//     }
//   }
// }

// Set<int> _intersect(Set<int> x, Set<int> y) =>
//     x.where((xe) => y.any((ye) => xe == ye)).toSet();

// Set<int> _union(Set<int> x, Set<int> y) => x..addAll(y);

// String _getLine() =>
//     stdin.readLineSync(encoding: Encoding.getByName('utf-8'))?.trim() ?? '';

// int _getIntLine() => int.parse(_getLine());

// List<int> _getIntListLine() => _getLine().split(' ').map(int.parse).toList();
import 'dart:convert';
import 'dart:io';

void main() {
  var mask = 0x00001111;

  print(mask.toRadixString(2));
}

String _getLine() =>
    stdin.readLineSync(encoding: Encoding.getByName('utf-8'))?.trim() ?? '';

int _getIntLine() => int.parse(_getLine());

List<int> _getIntListLine() => _getLine().split(' ').map(int.parse).toList();

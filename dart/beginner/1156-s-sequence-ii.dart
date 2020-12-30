void main() {
  var s = 0.0;

  for (var d1 = 1, d2 = 1; d1 <= 39; d1 += 2, d2 += d2) {
    s += d1 / d2;
  }

  print(s.toStringAsFixed(2));
}

/// * Recusive solution
/// ```dart
/// void main() {
///   print(_s().toStringAsFixed(2));
/// }
///
/// double _s([double s = 0.0, int d1 = 1, int d2 = 1]) =>
///   d1 <= 39 ? _s(s += d1 / d2, d1 += 2, d2 += d2) : s;
/// ```

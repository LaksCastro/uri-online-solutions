void main() {
  var s = 0.0;

  for (var d1 = 1, d2 = 1; d1 <= 39; d1 += 2, d2 += d2) {
    s += d1 / d2;
  }

  print(s.toStringAsFixed(2));
}

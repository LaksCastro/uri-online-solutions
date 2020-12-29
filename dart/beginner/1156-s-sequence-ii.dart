void main() {
  var divisor = 1;
  var dividendo = 1;

  var s = 0.0;

  for (; divisor <= 39; divisor += 2, dividendo += dividendo) {
    s += divisor / dividendo;
  }

  print(s.toStringAsFixed(2));
}

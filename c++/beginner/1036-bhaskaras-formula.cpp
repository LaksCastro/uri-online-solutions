#include <iostream>
#include <iomanip>
#include <math.h>

using namespace std;

int main() {
  double a, b, c;

  cout << fixed << setprecision(5);

  cin >> a >> b >> c;

  double d = b * b - 4 * a * c;

  if (d < 0 || a == 0) {
    cout << "Impossivel calcular" << endl;
  } else {
    b = b * -1;
    d = sqrt(d);
    a *= 2;

    double x1 = b + d;
    x1 /= a;

    double x2 = b - d;
    x2 /= a;

    cout << "R1 = " << x1 << endl;
    cout << "R2 = " << x2 << endl;
  }

  return 0;
}

#include <iostream>
#include <iomanip>
#include <cmath>

using namespace std;

int main() {
  double pi = 3.14159;

  double r;

  cout << fixed << setprecision(3);

  cin >> r;

  double v = 4.0 / 3.0 * pi * pow(r, 3);

  cout << "VOLUME = " << v << endl;

  return 0;
}

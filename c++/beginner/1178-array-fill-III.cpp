#include <iostream>
#include <iomanip>

using namespace std;

int main() {
  double a;

  cout << fixed << setprecision(4);

  cin >> a;

  for (int i = 0; i < 100; i++) {
    cout << "N[" << i << "] = " << a << endl;

    a /= 2;
  }

  return 0;
}

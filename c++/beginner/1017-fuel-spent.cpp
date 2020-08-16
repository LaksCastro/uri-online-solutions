#include <iostream>
#include <iomanip>

using namespace std;

int main() {
  int t, v;

  cout << fixed << setprecision(3);

  cin >> t;
  cin >> v;

  int km = t * v;

  double c = km / 12.0;

  cout << c << endl;

  return 0;
}

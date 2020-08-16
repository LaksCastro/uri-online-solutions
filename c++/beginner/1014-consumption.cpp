#include <iostream>
#include <iomanip>

using namespace std;

int main() {
  double x, y;

  cout << fixed << setprecision(3);

  cin >> x;
  cin >> y;

  cout << x / y << " km/l" << endl;

  return 0;
}

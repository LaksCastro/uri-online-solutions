#include <iostream>
#include <iomanip>

using namespace std;

int main() {
  double pi = 3.14159, r;

  cout << fixed << setprecision(4);

  cin >> r;

  cout << "A=" << pi * r * r << endl;

  return 0;
}

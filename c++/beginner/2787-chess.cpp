#include <iostream>
#include <iomanip>

using namespace std;

bool isEven(int n) { return n % 2 == 0; }

int main() {
  double l, c;

  cin >> l >> c;

  cout << (isEven(l) == isEven(c)) << endl;

  return 0;
}

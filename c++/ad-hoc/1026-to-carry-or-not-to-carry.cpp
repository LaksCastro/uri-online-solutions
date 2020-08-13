#include <iostream>

using namespace std;

int main() {
  unsigned a, b, c;

  while (cin >> a >> b) {
    cout << (a ^ b) << endl;
  }

  return 0;
}

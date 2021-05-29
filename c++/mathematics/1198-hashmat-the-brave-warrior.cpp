#include <iostream>
#include <iomanip>
#include <stdlib.h>

using namespace std;

int main() {
  long long a, b;

  while (cin >> a >> b) {
    cout << abs(a - b) << endl;
  }

  return 0;
}
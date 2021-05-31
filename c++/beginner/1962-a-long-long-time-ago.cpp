#include <iostream>
#include <cmath>

using namespace std;

int main() {
  long long n;

  cin >> n;

  for (long long i = 0; i < n; i++) {
    long long x;

    cin >> x;

    long long y = 2015 - x;

    cout << abs(y) + (y <= 0 ? 1 : 0) << (y <= 0 ? " A.C." : " D.C.") << endl;
  }

  return 0;
}
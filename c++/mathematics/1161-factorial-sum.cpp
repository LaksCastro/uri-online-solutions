#include <iostream>
#include <iomanip>

using namespace std;

long long f(long long n) { return n == 0 ? 1 : n * f(n - 1); }

int main() {
  long long result, a, b;

  while (cin >> a >> b) {
    result = f(a) + f(b);

    cout << result << endl;
  }

  return 0;
}

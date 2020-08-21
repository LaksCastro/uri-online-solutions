#include <iostream>
#include <iomanip>

using namespace std;

int main() {
  int length;
  int n;

  cin >> length;

  for (int i = 0; i < length; i++) {
    cin >> n;

    unsigned long long r = 0;
    unsigned long long q = 1;

    for (int j = 0; j < n; j++) {
      r = r + q;
      q = q * 2;
    }

    double g = r / 12;
    unsigned long long k = g / 1000;

    cout << k << " kg" << endl;
  }

  return 0;
}

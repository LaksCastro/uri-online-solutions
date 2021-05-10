#include <iostream>

using namespace std;

int main() {
  int n;

  while (cin >> n) {
    for (long long i = 1, digits = 1; true; i = (i * 10 + 1) % n, digits++) {
      if (i % n == 0) {
        cout << digits << endl;

        break;
      }
    }
  }
}

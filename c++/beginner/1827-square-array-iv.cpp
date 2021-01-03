#include <iostream>

using namespace std;

int getX(int c, int n) { return c / n; }
int getY(int c, int n) { return c % n; }

int main() {
  int n, last;

  while (cin >> n) {
    last = n * n - 1;

    for (int current = 0; current <= last; current++) {
      int x = getX(current, n);
      int y = getY(current, n);

      int lim = n - 1;
      int l1 = n / 3;

      if (x == y && x == lim / 2) {
        cout << '4';
      } else if ((x >= l1 && x <= lim - l1) && (y >= l1 && y <= lim - l1)) {
        cout << '1';
      } else if (y == lim - x) {
        cout << '3';
      } else if (y == x) {
        cout << '2';
      } else {
        cout << '0';
      }

      if (x != getX(current + 1, n)) cout << endl;
    }

    cout << endl;
  }

  return 0;
}

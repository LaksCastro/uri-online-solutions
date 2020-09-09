#include <iostream>
#include <cmath>

using namespace std;

int main() {
  double x1, y1, x2, y2;

  while (cin >> x1 >> y1 >> x2 >> y2) {
    if (x1 + y1 + x2 + y2 == 0) {
      break;
    }

    bool diagonal = abs(x1 - x2) == abs(y1 - y2);

    cout << (x1 == x2 && y1 == y2
                 ? "0"
                 : (diagonal || (x1 == x2 || y1 == y2) ? "1" : "2"))
         << endl;
  }

  return 0;
}

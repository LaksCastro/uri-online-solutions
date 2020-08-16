#include <iostream>
#include <iomanip>
#include <cmath>;

using namespace std;

struct point {
  double x;
  double y;
};

int main() {
  point p1, p2;

  cout << fixed << setprecision(4);

  cin >> p1.x >> p1.y;
  cin >> p2.x >> p2.y;

  double distance = sqrt(pow(p2.x - p1.x, 2) + pow(p2.y - p1.y, 2));

  cout << distance << endl;

  return 0;
}

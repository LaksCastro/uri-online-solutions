#include <iostream>
#include <iomanip>
#include <cmath>

using namespace std;

typedef struct {
  double r;
  double x;
  double y;
} circle;

double getDistance(double x1, double y1, double x2, double y2) {
  return sqrt(pow(x2 - x1, 2) + pow(y2 - y1, 2));
}

bool isIn(circle internal, circle external) {
  double distance = getDistance(internal.x, internal.y, external.x, external.y);

  return distance + internal.r <= external.r;
}

int main() {
  circle internal, external;

  while (cin >> external.r >> external.x >> external.y >> internal.r >>
         internal.x >> internal.y) {
    bool dead = !isIn(internal, external);

    cout << (dead ? "MORTO" : "RICO") << endl;
  }

  return 0;
}

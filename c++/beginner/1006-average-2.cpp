#include <iostream>
#include <iomanip>

using namespace std;

int main() {
  double a, b, c;
  double pa = 2, pb = 3, pc = 5;

  cout << fixed << setprecision(1);

  cin >> a;
  cin >> b;
  cin >> c;

  double m = (a * pa + (b * pb + c * pc)) / ((pa + pb) + pc);

  cout << "MEDIA = " << m << endl;

  return 0;
}

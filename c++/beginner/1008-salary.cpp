#include <iostream>
#include <iomanip>

using namespace std;

int main() {
  int id;
  double h, pr, s;

  cout << fixed << setprecision(2);

  cin >> id;
  cin >> h;
  cin >> pr;

  s = h * pr;

  cout << "NUMBER = " << id << endl;
  cout << "SALARY = U$ " << s << endl;

  return 0;
}

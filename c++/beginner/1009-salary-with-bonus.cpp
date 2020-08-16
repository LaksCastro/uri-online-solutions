#include <iostream>
#include <iomanip>
#include <string>

using namespace std;

int main() {
  string n;
  double s, v;

  cout << fixed << setprecision(2);

  cin >> n;
  cin >> s;
  cin >> v;

  double t = s + v * 0.15;
  
  cout << "TOTAL = R$ " << t << endl;

  return 0;
}

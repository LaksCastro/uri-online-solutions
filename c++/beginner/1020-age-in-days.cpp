#include <iostream>

using namespace std;

int main() {
  int d;

  cin >> d;

  int years = d / 365;
  int months = (d - years * 365) / 30;
  int days = (d - (months * 30 + years * 365));

  cout << years << " ano(s)" << endl;
  cout << months << " mes(es)" << endl;
  cout << days << " dia(s)" << endl;

  return 0;
}

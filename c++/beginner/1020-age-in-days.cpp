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

// ========================
// Other possible solution
// ========================

#include <iostream>
#include <iomanip>
#include <string>

using namespace std;

struct item {
    int value;
    string label;
};

int main() {
  int total;
  
  item calendar[] = { 
      { 365, "ano(s)" }, 
      { 30, "mes(es)" }, 
      { 1, "dia(s)" }
  };
  
  cin >> total;

  for (int i = 0; i < 3; i++) {
    int amount = total / calendar[i].value;

    total -= amount * calendar[i].value;

    cout << amount << " " << calendar[i].label << endl;
  }

  return 0;
}

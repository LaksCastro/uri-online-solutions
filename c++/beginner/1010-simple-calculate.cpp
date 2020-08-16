#include <iostream>
#include <iomanip>
#include <string>

using namespace std;

struct item {
  string code;
  int length;
  double value;
};

int main() {
  int size = 2;

  item items[size];

  double total;

  cout << fixed << setprecision(2);

  for (int i = 0; i < size; i++) {
    cin >> items[i].code >> items[i].length >> items[i].value;

    total += items[i].length * items[i].value;
  }

  cout << "VALOR A PAGAR: R$ " << total << endl;

  return 0;
}

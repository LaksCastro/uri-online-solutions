#include <iostream>
#include <iomanip>

using namespace std;

int main() {
  int total;
  int banknotes[] = {100, 50, 20, 10, 5, 2, 1};

  cin >> total;

  cout << total << endl;

  for (int i = 0; i < 7; i++) {
    int amount = total / banknotes[i];

    total -= amount * banknotes[i];

    cout << amount << " nota(s) de R$ " << banknotes[i] << ",00" << endl;
  }

  return 0;
}

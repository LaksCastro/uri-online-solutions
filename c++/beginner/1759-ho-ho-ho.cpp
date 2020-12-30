#include <iostream>
#include <string>

using namespace std;

int main() {
  string m;
  long n;

  cin >> n;

  for (int i = 0; i < n; i++) {
    if (i == n - 1) {
      m += "Ho!";
    } else {
      m += "Ho ";
    }
  }

  cout << m << endl;

  return 0;
}

#include <iostream>
#include <string>

using namespace std;

int main() {
  int s[3], max;

  cin >> s[0] >> s[1] >> s[2];

  for (int i = 0; i < 3; i++) {
    if (s[i] > max) {
      max = s[i];
    }
  }

  cout << max << " eh o maior" << endl;

  return 0;
}

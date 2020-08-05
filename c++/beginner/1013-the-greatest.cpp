#include <iostream>
#include <string>

using namespace std;

int main() {
  string s;

  getline(cin, s);

  string delimiter = " ";

  size_t pos = 0;
  string token;

  int max;

  while ((pos = s.find(delimiter)) != string::npos) {
    token = s.substr(0, pos);

    int current = stoi(token);

    if (current > max) {
      max = current;
    }

    s.erase(0, pos + delimiter.length());
  }

  if (stoi(s) > max) {
    max = stoi(s);
  }

  cout << max << " eh o maior" << endl;

  return 0;
}

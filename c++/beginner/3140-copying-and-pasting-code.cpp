#include <iostream>
#include <string>

using namespace std;

bool contains(string a, string b) {
  return a.find(b) != string::npos;
}

int main() {
  string c;

  bool inBody = false;

  while (getline(cin, c)) {
    if (contains(c, "</body>")) {
      break;
    }

    if (inBody) {
      cout << c << endl;
    } else if (contains(c, "<body>")) {
      inBody = true;
    }
  }
}
#include <iostream>
#include <string>

using namespace std;

int main() {
  string name;

  getline(cin, name);

  cout << (name.length() > 80 ? "NO" : "YES") << endl;

  return 0;
}

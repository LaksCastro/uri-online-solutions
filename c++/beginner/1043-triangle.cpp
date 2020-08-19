#include <iostream>
#include <iomanip>
#include <cmath>

using namespace std;

int main() {
    double a, b, c;
    
    cout << fixed << setprecision(1);
    
    cin >> a >> b >> c;
 
    bool possible =
      a > abs(b - c) &&
      a < b + c &&
      b > abs(a - c) &&
      b < a + c &&
      c > abs(a - b) &&
      c < a + b;
    
    if(possible) {
      double p = a + b + c;
      cout << "Perimetro = " << p << endl;
    } else {
      double area = (a + b) * c / 2;
      cout << "Area = " << area << endl;
    }
 
    return 0;
}

#include <iostream>
#include <iomanip>

using namespace std;
 
int main() {
  double n1, n2;
    
  cout << fixed << setprecision(5);
    
  cin >> n1;
  cin >> n2;
    
  double p1 = 3.5;
  double p2 = 7.5;
    
  n1 *= p1;
  n2 *= p2;
    
  double m = (n1 + n2) / (p1 + p2);
    
  cout << "MEDIA = " << m << endl;
    
  return 0;
}

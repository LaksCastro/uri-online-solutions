#include <iostream>
#include <iomanip>

using namespace std;

int main() {
  int cases;

  cout << fixed << setprecision(3);

  cin >> cases;

  for (int i = 0; i < cases; i++) {
    double students = 0;
    double okStudents = 0;

    double average = 0;
    double sum = 0;

    cin >> students;

    double all[(int)students];

    for (int j = 0; j < students; j++) {
      cin >> all[j];

      sum += all[j];
    }

    average = sum / students;

    for (int j = 0; j < students; j++) {
      if (all[j] > average) {
        okStudents++;
      }
    }

    double result = (okStudents * 100) / students;

    cout << result << "%" << endl;
  }

  return 0;
}

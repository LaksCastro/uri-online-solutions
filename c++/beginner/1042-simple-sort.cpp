#include <iostream>

using namespace std;

int ascending = 1;
int size = 3;

bool compare(int a, int b) { return ascending == 1 ? (a < b) : (a > b); }

void insertionSort(int arr[]) {
  for (int i = 0; i < size; i++) {
    for (int j = 0; j < size; j++) {
      if (compare(arr[i], arr[j])) {
        int aux = arr[i];

        arr[i] = arr[j];
        arr[j] = aux;
      }
    }
  }
}

void printArray(int arr[]) {
  for (int i = 0; i < size; i++) {
    cout << arr[i] << endl;
  }
}

int main() {
  int numbers[size];

  cin >> numbers[0] >> numbers[1] >> numbers[2];

  int ascendingOrder[] = {numbers[0], numbers[1], numbers[2]};

  insertionSort(ascendingOrder);

  printArray(ascendingOrder);

  cout << endl;

  printArray(numbers);

  return 0;
}

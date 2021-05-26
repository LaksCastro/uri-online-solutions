import 'dart:convert';
import 'dart:io';

class Stack<T> {
  final List<T> entries = [];
  final List<T> popped = [];

  void addEntry(T entry) {
    entries.insert(0, entry);
  }

  void sort() {
    while (entries.length >= 2) {
      popped.add(entries.removeLast());
      entries.insert(0, entries.removeLast());
    }
  }
}

void main() {
  int n;

  while ((n = _getIntLine()) != 0) {
    final stack = Stack<int>();

    for (var i = 1; i <= n; i++) {
      stack.addEntry(i);
    }

    stack.sort();

    print('Discarded cards: ${stack.popped.join(', ')}');
    print('Remaining card: ${stack.entries.last}');
  }
}

String _getLine() =>
    stdin.readLineSync(encoding: Encoding.getByName('utf-8'))?.trim() ?? '';

int _getIntLine() => int.parse(_getLine());

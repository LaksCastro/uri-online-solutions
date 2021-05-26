import 'dart:convert';
import 'dart:io';

void main() {
  final n = _getIntLine();

  for (var i = 0; i < n; i++) {
    final s = _getLine();

    var matches = 0;
    final waitList = <String, List<String>>{};

    List<String> waitEntry(String entry) =>
        (waitList[entry] ?? (waitList[entry] = []));

    void pushWaitEntry(String entry) => waitEntry(entry).add(entry);

    bool hasMatch(String entry) => waitEntry(entry).isNotEmpty;

    void popWaitEntry(String entry) {
      if (hasMatch(entry)) {
        waitEntry(entry).removeLast();
      }
    }

    if (s.isEmpty) {
      print('0');
    } else {
      for (var i = 0; i < s.length; i++) {
        final entry = s[i];

        if (entry == '>' && hasMatch('<')) {
          matches++;
          popWaitEntry('<');
        } else if (entry == '<') {
          pushWaitEntry('<');
        }
      }

      print(matches);
    }
  }
}

String _getLine() =>
    stdin.readLineSync(encoding: Encoding.getByName('utf-8'))?.trim() ?? '';

int _getIntLine() => int.parse(_getLine());

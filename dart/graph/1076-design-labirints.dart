import 'dart:convert';
import 'dart:io';

void main() {
  final n = _getIntLine();

  for (var i = 0; i < n; i++) {
    final graph = List<List<int>>.filled(7 * 7, List.filled(7 * 7, -1));
    final visited = List.filled(7 * 7, -1);

    final start = _getIntLine();

    final ve = _getIntListLine(), verticesLength = ve[0], edgesLength = ve[1];

    for (var j = 0; j < edgesLength; j++) {
      final xy = _getIntListLine(), x = xy[0], y = xy[1];

      graph[x][y] = 1;
      graph[y][x] = 1;
    }

    final count = _depthFirstSearch(start, visited, graph, verticesLength);

    print(count * 2);
  }
}

int _depthFirstSearch(
  int startVertice,
  List<int> visited,
  List<List<int>> graph,
  int verticesLength, [
  int count = 0,
]) {
  visited[startVertice] = 1;

  for (var i = 0; i < verticesLength; i++) {
    if (graph[startVertice][i] == 1 && visited[i] == -1) {
      return _depthFirstSearch(i, visited, graph, verticesLength, count + 1);
    }
  }

  return count;
}

String _getLine() =>
    stdin.readLineSync(encoding: Encoding.getByName('utf-8'))?.trim() ?? '';

int _getIntLine() => int.tryParse(_getLine());

List<int> _getIntListLine() => _getLine().split(' ').map(int.tryParse).toList();

// import 'dart:collection';
// import 'dart:convert';
// import 'dart:io';
// import 'dart:math' as math;

// class LinkedListNode extends LinkedListEntry<LinkedListNode> {
//   final GraphVertex vertex;

//   LinkedListNode(this.vertex);
// }

// class GraphVertex extends Comparable<GraphVertex> {
//   final int value;
//   final int x;
//   final int y;

//   GraphVertex(
//     this.value, {
//     this.x,
//     this.y,
//   });

//   @override
//   bool operator ==(Object other) {
//     if (other is GraphVertex) {
//       return other.value == value && other.x == x && other.y == y;
//     }

//     return false;
//   }

//   @override
//   bool operator >(GraphVertex other) {
//     return other.value > value;
//   }

//   @override
//   bool operator <(GraphVertex other) {
//     return other.value < value;
//   }

//   @override
//   bool operator <=(GraphVertex other) {
//     return other.value <= value;
//   }

//   @override
//   bool operator >=(GraphVertex other) {
//     return other.value >= value;
//   }

//   @override
//   int get hashCode => value.hashCode ^ x.hashCode ^ y.hashCode;

//   @override
//   int compareTo(GraphVertex other) {
//     if (value == other.value) return 0;

//     return value < other.value ? -1 : 1;
//   }
// }

// /// Graph "line" or "connection"
// class GraphEdge {
//   final GraphVertex start;
//   final GraphVertex end;
//   final double weight;

//   const GraphEdge(this.start, this.end, this.weight);
// }

// // class Graph {
// //   final Map<Node, List<Node>> vertices;

// //   const Graph(this.vertices);

// //   void addEdge(Node vertice, Node adjacent) {
// //     (vertices[vertice] ?? (() => vertices[vertice] = [])()).add(adjacent);
// //   }

// //   BreadthFirstSearch get connected {
// //     return BreadthFirstSearch(this);
// //   }
// // }

// void main() {
//   final list = LinkedList<LinkedListNode>();

//   list.add(LinkedListNode(GraphVertex(10, x: 1, y: 1)));
//   list.add(LinkedListNode(GraphVertex(5, x: 4, y: 1)));
//   list.add(LinkedListNode(GraphVertex(8, x: 5, y: 1)));
//   list.add(LinkedListNode(GraphVertex(54, x: 6, y: 1)));

//   print(list.map((e) => e.vertex.value).toList());

//   // final graph = Graph({});

//   // LinkedList

//   // graph.addEdge(Node(0, x: 0, y: 0), Node(1, x: 2, y: 3));
//   // graph.addEdge(Node(2, x: 3, y: 2), Node(3, x: 3, y: 3));
//   // graph.addEdge(Node(4, x: 4, y: 3), Node(5, x: 2, y: 3));
//   // graph.addEdge(Node(6, x: 2, y: 3), Node(7, x: 2, y: 4));

//   // _printGraph(graph);
// }

// // void _printGraph(Graph graph) {
// //   print('Todos os vertices desse grafo:');

// //   print(
// //       '''${graph.vertices.keys.toList().map((adjacent) => adjacent.value).toList().join(', ')}\n''');

// //   for (final vertice in graph.vertices.keys) {
// //     print('Vertice ${vertice.value}:');
// //     print(graph.vertices[vertice]
// //         .map((adjacent) => adjacent.value)
// //         .toList()
// //         .join(', '));
// //   }
// // }

// double _pythagorean(double a, double b) {
//   return math.sqrt(math.pow(a, 2) + math.pow(b, 2));
// }

// String _getLine() =>
//     stdin.readLineSync(encoding: Encoding.getByName('utf-8'))?.trim() ?? '';

// int _getIntLine() => int.tryParse(_getLine());

// List<String> _getStringListLine() => _getLine().split(' ');

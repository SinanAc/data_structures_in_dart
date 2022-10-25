// import 'dart:io';
// import 'linked.dart';
// import 'queue.dart';
// import 'sort.dart';
// import 'stack.dart';
// import 'tree.dart';
import 'graph.dart';

void main()async {
  Graph graph = Graph();
  graph.insert(3, 5, true);
  graph.insert(3, 4, true);
  graph.insert(5, 6, false);
  graph.display();
}

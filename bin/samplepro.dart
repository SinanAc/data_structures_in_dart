import 'dart:io';
import 'graph/graph.dart';
import 'graph/river_graph.dart';
import 'linked_list/linked.dart';
import 'stack_queue/queue.dart';
import 'sort/sort.dart';
import 'stack_queue/stack.dart';
import 'tree/tree.dart';
void main() {
  // ==================== List (array) ========================
  List<int> arr = [2999, 43, 3, 678, 7, 5, 9, 34, 21, 56, 12, 78];
  // ========== END ========== //

  // ==================== creating objects ====================
  LinkedList list = LinkedList();
  Stacks stack = Stacks();
  Queue queue = Queue();
  Sort sort = Sort();
  BinarySearchTree tree = BinarySearchTree();
  Graph<int> graph = Graph();
  final RiverGraph riverGraph = RiverGraph();

  // ========== END ========== //

  // ==================== Graph operations ===================
  graph.insert(3, 5, true);
  graph.insert(3, 4, true);
  graph.insert(5, 6, false);
  graph.display();
      final List<List<int>> matrix = [
    [1,0,0,1,1],
    [0,1,1,1,0],
    [0,0,0,0,1],
    [1,0,0,0,1]
  ];
  
  final List<int> results = riverGraph.checkRiverSize(matrix);
  print(results);
  // ========== END ========== //

  // ==================== tree operations =====================
  tree.insertNode(10);
  tree.insertNode(8);
  tree.insertNode(12);
  tree.insertNode(3);
  tree.postOrder();
  tree.removeFromTree(8);
  print('${tree.isContains(8)}');
  // ========== END ========== //

  // =================== linked_list operations ===============
  for (int i = 0; i < arr.length; i++) {
    list.addNode(arr[i]);
  }
  list.display();
  list.addDoublyNode(10);
  list.addDoublyNode(20);
  list.addDoublyNode(300);
  list.displayDoublyReverse();
  // ========== END ========== //

  // ================== stack operations =======================
  stack.push(10);
  stack.push(20);
  stack.pop();
  stack.display();
  // ========== END ========== //

  // =================== queue operations ======================
  queue.enqueue(10);
  queue.enqueue(300);
  queue.dequeue();
  queue.display();
  // ========== END ========== //

  // =================== Sort operations =======================
  List<int> sortedArr = sort.bubbleSort(arr);
  for (int element in sortedArr) {
    stdout.write('$element, ');
  }
  print(arr.length);
  //========== END ========== //
}
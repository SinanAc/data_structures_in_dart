import 'dart:io';
import 'graph.dart';
import 'linked.dart';
import 'queue.dart';
import 'sort.dart';
import 'stack.dart';
import 'tree.dart';
void main()async {
  // ==================== List (array) ========================
  List<int> arr = [2999, 43, 3, 678, 7, 5, 9, 34, 21, 56, 12, 78];
  // ========== END ========== //

  // ==================== creating objects ====================
  LinkedList list = LinkedList();
  Stack stack = Stack();
  Queue queue = Queue();
  Sort sort = Sort();
  BinarySearchTree tree = BinarySearchTree();
  Graph graph = Graph();

  // ========== END ========== //

  // ==================== Graph operations ===================
  graph.insert(3, 5, true);
  graph.insert(3, 4, true);
  graph.insert(5, 6, false);
  graph.display();
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
  print("===============");
  List<int> sortedArr = sort.bubbleSort(arr);
  for (int element in sortedArr) {
    stdout.write('$element, ');
  }
  print("\n===============");
  print(arr.length);
  print("===============");
  //========== END ========== //
}

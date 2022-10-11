import 'dart:io';
import 'tree.dart';
import 'linked.dart';
import 'stack.dart';
import 'queue.dart';
import 'sort.dart';

void main() {
  ///**** creating objects ==========
  LinkedList list = LinkedList();
  Stack stack = Stack();
  Queue queue = Queue();
  Sort sort = Sort();
  BinarySearchTree tree = BinarySearchTree();

  //****  tree operations =======
  tree.insertNode(10);
  tree.insertNode(8);
  tree.insertNode(12);
  tree.insertNode(3);
  tree.postOrder();
  tree.removeFromTree(8);
  print('${tree.isContains(8)}');

/// ============================== *******////

///**** list (array) ====
List<int> arr = [11, 12, 13, 1212, 1, 3, 1, 7, 99, 0];

  /// ========================*******/////

  ///****  linked_list operations =======
  for (int i = 0; i < arr.length; i++) {
    list.addNode(arr[i]);
  }
  list.addDoublyNode(10);
  list.addDoublyNode(20);
  list.addDoublyNode(300);
  list.display();
  /// ============================= ****/////

  ///**** stack operations ============
  stack.push(10);
  stack.push(20);
  stack.pop();
  stack.display();

  /// ===============================****/////

  ///**** queue operations ==========
  queue.enqueue(10);
  queue.enqueue(300);
  queue.dequeue();
  queue.display();

  /// =========================== ****/////

  ///**** insetions sort operations ==========
  print("===============");
  List<int> sortedArr = sort.bubbleSort(arr);
  for (int element in sortedArr) {
    stdout.write('$element, ');
  }
  print("\n===============");
  print(arr.length);
  print("===============");

  /// =========================== ****/////

}
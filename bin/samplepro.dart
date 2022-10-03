import 'dart:io';

import 'sort.dart';

void main() {
  ///**** creating objects ==========
  //SinglyLinkedList list = SinglyLinkedList();
  //Stack stack = Stack();
  //Queue queue = Queue();
  Sort sort = Sort();

  /// ============================== *******////

  ///**** list (array) ====
  List<int> arr = [11,12,13,1212,1,3,1,7,99,0];

  /// ========================*******/////

  ///****  linked_list operations =======
  // for (int i = 0; i < arr.length; i++) {
  //   list.addNode(arr[i]);
  // }
  // list.addDoublyNode(10);
  // list.addDoublyNode(20);
  // list.addDoublyNode(300);
  // list.display();
  /// ============================= ****/////

  ///**** stack operations ============
  // stack.push(10);
  // stack.push(20);
  // stack.push(300);
  // stack.pop();
  // stack.display();
  /// ===============================****/////

  ///**** queue operations ==========
  // queue.enqueue(10);
  // queue.enqueue(20);
  // queue.enqueue(300);
  // queue.dequeue();
  // queue.display();
  /// =========================== ****/////

  ///**** insetions sort operations ==========
  print("===============");
  List<int> sortedArr = sort.bubbleSort(arr);
  for (int element in sortedArr) {
    stdout.write('$element, ');
  }
  print("\n===============");
  // print(arr.length);
  // print("===============");

  /// =========================== ****/////
}

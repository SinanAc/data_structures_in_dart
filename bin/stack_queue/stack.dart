import 'dart:io';

class Node {
  final int data;
  Node? next;
  Node({required this.data});
}

class Stack {
  Node? top;

  // add to stack
  void push(int data) {
    Node newNode = Node(data: data);
    if (top == null) {
      top = newNode;
    } else {
      newNode.next = top;
      top = newNode;
    }
  }

  // display stack
  void display() {
    if (top == null) {
      print("stack is empty");
      return;
    }
    Node? temp = top;
    print("\n===============");
    print("stack list: ");
    while (temp != null) {
      stdout.write("${temp.data}  ");
      temp = temp.next;
    }
    print("\n===============");
  }

  // remove from stack
  void pop() {
    if (top == null) {
      print("stack is empty");
      return;
    }
    top = top!.next;
  }
}

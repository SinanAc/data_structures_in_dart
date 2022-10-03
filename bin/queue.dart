import 'dart:io';

class Node {
  final int data;
  Node? next;
  Node({required this.data});
}

class Queue {
  Node? front;
  Node? rear;

  // add to Queue list
  void enqueue(int data) {
    Node newNode = Node(data: data);
    if (rear == null) {
      front = newNode;
      rear = newNode;
    } else {
      rear!.next = newNode;
      rear = newNode;
    }
  }

  // remove from Queue list
  void dequeue() {
    if (front == null) {
      print('No data');
      return;
    }
    front = front!.next;
    if (front == null) {
      rear = null;
    }
  }

  // display Queue list
  void display() {
    if (front == null) {
      print("stack is empty");
      return;
    }
    Node? temp = front;
    print("===============");
    print("stack list: ");
    while (temp != null) {
      stdout.write("${temp.data}  ");
      temp = temp.next;
    }
    print("\n===============");
  }
}

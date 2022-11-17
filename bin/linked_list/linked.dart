import 'dart:io';

class Node {
  final int data;
  Node? next;
  Node? prev;
  Node({required this.data});
}

class LinkedList {
  Node? head;
  Node? tail;

  // ====>>> add to singly linked list
  void addNode(int data) {
    Node newNode = Node(data: data);
    if (head == null) {
      head = newNode;
    } else {
      tail!.next = newNode;
    }
    tail = newNode;
  }

  // ====>>> add to doubly linked list
  void addDoublyNode(int data) {
    Node newNode = Node(data: data);
    if (head == null) {
      head = newNode;
    } else {
      tail!.next = newNode;
      newNode.prev = tail;
    }
    tail = newNode;
  }

  // ====>>> display singly linked list
  void display() {
    if (head == null) {
      print("List is empty");
      return;
    }
    Node? temp = head;
    print("\n===============");
    print("\nLinked list: ");
    while (temp != null) {
     stdout.write("${temp.data}  ");
      temp = temp.next;
    }
    print("\n===============");
  }

  // ====>>> display doubly linked list
  void displayDoublyReverse() {
    if (tail == null) {
      print("List is empty");
      return;
    }
    Node? temp = tail;
    print("\n===============");
    print("\nNodes of doubly linked list: ");
    while (temp != null) {
      stdout.write("${temp.data}  ");
      temp = temp.prev;
    }
    print("\n===============");
  }

  // ====>>> delete Node from linked list
  void deleteNode(data) {
    Node? temp = head;
    Node? prev;
    if (temp != null && temp.data == data) {
      head = temp.next;
      return;
    }

    while (temp != null && temp.data != data) {
      prev = temp;
      temp = temp.next;
    }

    if (temp == tail) {
      tail = prev;
      tail!.next = null;
      return;
    }
    prev!.next = temp!.next;
  }

  // ====>>> insert after Node in doubly linked list
  void insertAfter(int nextTo, int data) {
    Node newNode = Node(data: data);
    Node? temp = head;
    if (temp == null) {
      return;
    }
    while (temp != null && temp.data != nextTo) {
      temp = temp.next;
    }
    if (temp == tail) {
      tail!.next = newNode;
      tail = newNode;
      return;
    }
    newNode.next = temp!.next;
    temp.next = newNode;
  }

  // ====>>> insert before in doubly linked list
  void insertBefore(int beforeTo, int data) {
    Node newNode = Node(data: data);
    Node? temp = head;
    if (temp == null) {
      return;
    }
    while (temp != null && temp.data != beforeTo) {
      temp = temp.next;
    }
    if (temp == head) {
      temp!.prev = newNode;
      newNode.next = head;
      head = newNode;
      return;
    }
    newNode.next = temp;
    temp!.prev!.next = newNode;
    temp.prev = newNode;
  }

  // ====>>> add a new node to the first position
  void addAtFirst(data) {
    Node newNode = Node(data: data);
    newNode.next = head;
    head = newNode;
  }

  // ====>>> to reverse linked list
  void reverse() {
    Node? current = head;
    Node? nextNode;
    Node? prev;
    while (current != null) {
      nextNode = current.next;
      current.next = prev;
      prev = current;
      current = nextNode;
    }
    head = prev;
  }

  // ====>>> print head of linked list
  void printHead() {
    print("===============");
    if (head ==null){
      print("List is empty");
    }else{
      print("Head : ${head!.data}");
    }
    print("===============");
  }

  // ====>>> print tail of linked list
  void printTail() {
    print("===============");
    if (tail ==null){
      print("List is empty");
    }else{
      print("Tail : ${tail!.data}");
    }
    print("===============");
  }

}
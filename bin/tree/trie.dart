import 'dart:collection';

class TrieNode {
  Map<String, TrieNode> children = HashMap<String, TrieNode>();
}

class Trie {
  TrieNode root = TrieNode();
  String endSymbol = '*';
  Trie(String str) {
    _populateSuffixTree(str);
  }

  void _populateSuffixTree(String str) {
    for (int i = 0; i < str.length; i++) {
      _insertSubStringAt(i, str);
    }
  }

  void _insertSubStringAt(int index, String str) {
    TrieNode node = root;
    for (int i = index; i < str.length; i++) {
      String letter = String.fromCharCode(str.codeUnitAt(i));
      if (!node.children.containsKey(letter)) {
        TrieNode newNode = TrieNode();
        node.children.putIfAbsent(letter, () => newNode);
      }
      node = node.children[letter] ?? TrieNode();
    }
    node.children.putIfAbsent(endSymbol, ()=>TrieNode());
  }

  bool isContains (String str) {
    TrieNode node = root;
    for (int i = 0; i < str.length; i++) {
      String letter = String.fromCharCode(str.codeUnitAt(i));
      if(!node.children.containsKey(letter)){
        return false;
      }else{
        node = node.children[letter]??TrieNode();
      }      
    }
    return false;
  }
}

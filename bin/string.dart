class Strings {
  List change(String str, int key) {
  int newKey = key % 26;
  List strList = [];
  for (int i = 0; i < str.length; i++) {
    int letterPos = str.codeUnitAt(i) + newKey;
    if (letterPos <= 122) {
      strList.add(String.fromCharCode(letterPos));
    } else {
      strList.add(String.fromCharCode(96 + letterPos % 122));
    }
  }
  return strList;
}
}
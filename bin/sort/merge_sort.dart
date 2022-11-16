void main() {
  final List<int> array = [30, 2, 41, 56, 12, 11, 22, 41];
  print(MergeSort.mergeSort(array));
}

class MergeSort {
  static List<int> mergeSort(List<int> array) {
    if (array.length <= 1) {
      return array;
    }
    int middleIdx = (array.length ~/ 2).toInt();
    final List<int> firstHalf = array.getRange(0, middleIdx).toList();
    final List<int> lastHalf = array.getRange(middleIdx, array.length).toList();
    return _joinArray(mergeSort(firstHalf), mergeSort(lastHalf));
  }

  static List<int> _joinArray(List<int> firstHalf, List<int> lastHalf) {
    final List<int> newArray = List.generate(firstHalf.length+lastHalf.length, (index) => 0);
    int i = 0;
    int j = 0;
    int k = 0;
    while (i < firstHalf.length && j < lastHalf.length) {
      if (firstHalf[i] <= lastHalf[j]) {
        newArray[k++] = firstHalf[i++];
      } else {
        newArray[k++] = lastHalf[j++];
      }
    }
    while (i < firstHalf.length) {
      newArray[k++] = firstHalf[i++];
    }
    while (j < lastHalf.length) {
      newArray[k++] = lastHalf[j++];
    }
    return newArray;
  }
}

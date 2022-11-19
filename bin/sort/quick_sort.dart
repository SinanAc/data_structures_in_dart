void main() {
  List<int> arr = [30, 2, 41, 56, 12, 11, 22, 41];
  List<int> result = QuickSort.quickSort(arr);
  print(result);
}

class QuickSort {
  // ====>>> quick sort function
  static List<int> quickSort(List<int> arr) {
    quickSortHelper(arr, 0, arr.length-1);    
    return arr;
  }

  // ====>>> helper method
  static void quickSortHelper(List<int> arr, int startIdx, int endIdx) {
    if (startIdx >= endIdx) {
      return;
    }
    int pivotIdx = startIdx;
    int leftIdx = startIdx + 1;
    int rightIdx = endIdx;

    while (leftIdx <= rightIdx) {
      if (arr[leftIdx] > arr[pivotIdx] && arr[rightIdx] < arr[pivotIdx]) {
        swap(arr, leftIdx, rightIdx);
        leftIdx++;
        rightIdx--;
      }
      if (arr[leftIdx] <= arr[pivotIdx]) {
        leftIdx++;
      }
      if (arr[rightIdx] >= arr[pivotIdx]) {
        rightIdx--;
      }
    }
    swap(arr, rightIdx, pivotIdx);
    quickSortHelper(arr, startIdx, rightIdx-1);
    quickSortHelper(arr, rightIdx+1, endIdx);
  }

  // ====>>> to swap values
  static void swap(List<int> arr, int i, int j) {
    int temp = arr[i];
    arr[i] = arr[j];
    arr[j] = temp;
  }
}

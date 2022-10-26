// ignore_for_file: import_of_legacy_library_into_null_safe 
//// ignore: depend_on_referenced_packages
import 'package:stack/stack.dart';

class RiverGraph {
  // fuction to count river size in a givern matrix
  List<int> checkRiverSize(List<List<int>> matrix) {
    List<List<bool>> visited = [];
    List<int> sizes = [];
    for (int i = 0; i < matrix.length; i++) {
      for (int j = 0; j < matrix[0].length; j++) {
        if (visited[i][j]) {
          continue;
        } else {}
      }
    }
    return sizes;
  }

  // fuction to traverse through the river
  void traverseThroughRiver(
    int i,
    int j,
    List<List<int>> matrix,
    List<List<bool>> visited,
    List<int> sizes,
  ) {
    int currentRiverSize = 0;
    Stack<List<int>> nodesToExplore = Stack();
    nodesToExplore.push([i, j]);
    while (nodesToExplore.isNotEmpty) {
      List<int> currentNode = nodesToExplore.pop();
      i = currentNode[0];
      j = currentNode[1];
      if (visited[i][j]) {
        continue;
      }
      visited[i][j] = true;
      if (matrix[i][j] == 0) {
        continue;
      }
      currentRiverSize=currentRiverSize+1;
       List<List<int>> nearest = getNearestNodes(i, j, matrix, visited);
      for(int k=0; k<nearest.length; k++) {
        nodesToExplore.push(nearest[k]);
      }
    }
  }


  // fuction to get the nearest nodes
  List<List<int>> getNearestNodes(
    int i,
    int j,
    List<List<int>> matrix,
    List<List<bool>> visited,
  ) {
    List<List<int>> nearest = [];
    // first case
    if (i > 0 && !visited[i - 1][j]) {
      nearest.add([i - 1, j]);
    }
    // second case
    if (i < matrix.length - 1 && !visited[i + 1][j]) {
      nearest.add([i + 1, j]);
    }
    // third case
    if (j > 0 && !visited[i][j-1]) {
      nearest.add([i,j-1]);
    }
    // fourth case
    if (j< matrix[0].length - 1 && !visited[i][j+1]) {
      nearest.add([i, j+1]);
    }
    return nearest;
  }
}

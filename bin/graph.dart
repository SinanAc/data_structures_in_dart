import 'dart:collection';
import 'dart:io';

class Graph{
  // variables
  List<int>?_arrayList;
  final Map<int,List<int>> _maps = HashMap();
  // add to vertext method
  void _addVertex(int data){
    _maps.addAll({data:_arrayList??[]});
  }
  // insert method
  void insert(int vertex, int edge, bool isBiDirectional){
    if(!_maps.containsKey(vertex)){
      _addVertex(vertex);
    }
     if (!_maps.containsKey(edge)){
      _addVertex(edge);
     }
     _maps[vertex]?.add(edge);
     if(isBiDirectional){
      _maps[edge]?.add(vertex);
     }
  }
  // to show all data
  void display(){
   _maps.forEach((key, value) {
    stdout.write("$key: ");
    stdout.write("$value ");
   print('');
   });
  
  }
}
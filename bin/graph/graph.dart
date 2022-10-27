import 'dart:collection';
import 'dart:io';

class Graph<T>{
  // variables
  List<T>?_arrayList;
  final Map<T,List<T>> _maps = HashMap();
  // add to vertext method
  void _addVertex(T data){
    _maps.addAll({data:_arrayList??[]});
  }
  // insert method
  void insert(T vertex, T edge, bool isBiDirectional){
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
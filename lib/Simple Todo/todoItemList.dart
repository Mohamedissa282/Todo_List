import 'package:flutter/material.dart';
import 'package:flutterappl/Simple%20Todo/todoItem.dart';

class todoItemList extends ChangeNotifier{
  
  List<todoItem>  list = [];
  
  void add(todoItem item){
    list.add(item);
    notifyListeners();
  }
  int get count{
    return list.length;
  }
  List<todoItem> get list2{
    return list;
  } 
  void remove(todoItem item){
      list.remove(item);
      notifyListeners();
  }
  void checkTask(int i){
     list2[i].isCompleted();
     notifyListeners();
  }
  
}
import 'package:flutter/material.dart';
import 'item.dart';
class Cart with ChangeNotifier{
   List<Item> _items = [];
   double _price = 0.0;
   void Add(Item item){
     _items.add(item);
     _price+= item.price;
     notifyListeners();
   }
  void Remove(Item item){
    _items.remove(item);
    _price -= item.price;
    notifyListeners();
  }
  int get count{
    return _items.length;
  }
  double get total{
    return _price;
  }
  List<Item> get basketItem{
    return _items;
  }
}
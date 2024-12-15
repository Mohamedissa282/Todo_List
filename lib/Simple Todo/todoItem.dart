import 'package:flutter/material.dart';

class todoItem {
  final String title;
  bool ischeek;
  todoItem( {required this.title, required this.ischeek,});
  void isCompleted(){
  ischeek = !ischeek;
}
  
}

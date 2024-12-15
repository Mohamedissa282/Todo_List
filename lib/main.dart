import 'package:flutter/material.dart';
import 'package:flutterappl/Pages/login.dart';
import 'package:flutterappl/Simple%20Todo/myTextField.dart';
import 'package:flutterappl/Simple%20Todo/todoItemList.dart';
import 'package:flutterappl/Simple%20Todo/todoSimple.dart';
import 'package:flutterappl/Sports/Cart2.dart';
import 'package:flutterappl/Sports/sport.dart';
import 'package:flutterappl/Todo/todoList.dart';
import 'package:provider/provider.dart';
import './Model/Cart.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: (context){
      return todoItemList();
    },
    child:  MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        'textForm' : (context)=> myTextField()
      },
     home: todoSimple()
    ),);
  }
}


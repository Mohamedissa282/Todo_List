import 'package:flutter/material.dart';
import 'package:flutterappl/Simple%20Todo/myButton.dart';
import 'package:flutterappl/Simple%20Todo/todoItem.dart';
import 'package:flutterappl/Simple%20Todo/todoItemList.dart';
import 'package:provider/provider.dart';

class myTextField extends StatelessWidget {
  const myTextField({super.key});

  @override
  Widget build(BuildContext context) {
  
    TextEditingController mycontroller = TextEditingController();
    return Scaffold(
      appBar: AppBar(
      iconTheme: IconThemeData(
        color: Colors.white
      ),
        backgroundColor: Colors.blue[900],
        title: Text("Add Item", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body: Consumer<todoItemList>(builder: (context, additem, child){
        return Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 33),
            child: TextFormField(
              controller: mycontroller,
            decoration: InputDecoration(
             hintText: 'Add a new todo items',
             border: OutlineInputBorder(),
             
            ),
                ),
          ),
          myButton(
            onTap: (){
         additem.add(todoItem(title: mycontroller.text, ischeek: false));
  Navigator.of(context).pop();
            },
          ),
        ],
      );
      })
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutterappl/Simple%20Todo/cardTask.dart';
import 'package:flutterappl/Simple%20Todo/myTextField.dart';
import 'package:flutterappl/Simple%20Todo/todoItemList.dart';
import 'package:provider/provider.dart';

class todoSimple extends StatefulWidget {
  const todoSimple({super.key});

  @override
  State<todoSimple> createState() => _todoSimpleState();
}

class _todoSimpleState extends State<todoSimple> {
  
  List mylist = [
   'python programmation', 'C#', "Flutter"
  ];
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue[900],
        onPressed: (){
Navigator.of(context).pushNamed('textForm');
      }, child: Icon(Icons.add, color: Colors.white,),),
      backgroundColor: Colors.indigo[200],
      appBar: AppBar(
        title: Text("Simple Todo", style: TextStyle(
          color: Colors.white, fontWeight: FontWeight.bold
        ),),
        backgroundColor: Colors.blue[900],
        centerTitle: true,
        actions: [
          Consumer<todoItemList>(builder: (context, item, child){
            return Padding(
              padding: const EdgeInsets.only(right: 15),
              child: Text('${item.count}', style: TextStyle(
                color: Colors.white, fontSize: 16
              ),),
            );
          })
        ],
      ),
      body:  Consumer<todoItemList>(builder: (context, itemProv, child){
        return ListView.builder(
              itemCount: itemProv.list2.length,
              itemBuilder: (context, i){
              return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: cardTask(
              child: ListTile(
                title: Align(alignment: Alignment.centerLeft,
                  child: Text('${itemProv.list2[i].title}', style: TextStyle(color: Colors.white,fontSize: 19,
                  decoration: itemProv.list2[i].ischeek ? TextDecoration.lineThrough : TextDecoration.none
                  ),
                  
                  )),
                  leading: Checkbox(value:itemProv.list2[i].ischeek
                  , onChanged: (val){
        itemProv.checkTask(i);
                  }
   
                  ),
                  trailing: IconButton(onPressed: (){
               itemProv.remove(itemProv.list2[i]);
                  }, icon: Icon(Icons.delete, size: 28,)),
              ),
          ),
        );
            });
      })
          
    );
  }
}
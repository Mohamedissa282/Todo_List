import 'package:flutter/material.dart';
import 'package:flutterappl/Model/Cart.dart';
import 'package:flutterappl/Model/item.dart';
import 'package:provider/provider.dart';
class cheel extends StatefulWidget {
  const cheel({super.key});

  @override
  State<cheel> createState() => _cheelState();
}

class _cheelState extends State<cheel> {
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      appBar: AppBar(
        title: Text("Sheek Out"),
      ),
      body: Consumer<Cart>(builder: (context, ckek, child){
        return 
          
            ListView.builder(
            itemCount: ckek.basketItem.length,
            itemBuilder: (context, i){
            return Card(
              child: ListTile(
                
              title: Text('${ckek.basketItem[i].name}'),
              subtitle: Text('${ckek.basketItem[i].price}'),
              trailing: IconButton(onPressed: (){
                ckek.Remove(ckek.basketItem[i]);
              }, icon: Icon(Icons.remove)),
              ),
            );
                  });

                  
        
      })
    );
  }
}
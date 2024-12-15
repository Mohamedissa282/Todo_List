import 'package:flutter/material.dart';

class myButton extends StatelessWidget {
 final void Function()? onTap;
  const myButton({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
              height: 50,
              width: 218,
              decoration: BoxDecoration(
                color: Colors.blue[900],
                borderRadius: BorderRadius.circular(8)
              ),
              child: Align(alignment: Alignment.center,
                child: Text("Add Item", style: TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold
                ),),
              ),
            ),
    );
  }
}
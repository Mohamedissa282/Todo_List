import 'package:flutter/material.dart';

class cardTask extends StatelessWidget {
  final Widget? child;
  const cardTask({super.key, this.child});

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 75, height: 80,
      
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(13),
        color: Colors.grey,
        
      ),
      child: child,
    );
  }
}
import 'package:flutter/material.dart';






class MyBox extends StatelessWidget {


  const MyBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: BorderRadius.circular(12),
            boxShadow: [BoxShadow(color: Colors.black, blurRadius: 8)]),
            child: Column(
              children: [
                Image.asset("")
              ],
            ),
      ),
    );
  }
}

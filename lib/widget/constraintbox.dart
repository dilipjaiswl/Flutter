import 'package:flutter/material.dart';

class Constraintbox1 extends StatelessWidget {
  const Constraintbox1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("RichText Widgets"),
        backgroundColor: Colors.greenAccent,
      ),
      body: ConstrainedBox(
          constraints:const BoxConstraints(
            //minHeight: 100,
           // minWidth: 100,
            maxHeight: 100,
            maxWidth: 200,
          ),
       child: const Text("Hello World Hello World Hello World Hello World Hello World Hello World Hello Worldv Hello WorldHello World Hello World Hello Worldv Hello WorldHello World",
         style: TextStyle(
           fontSize: 21,
           overflow: TextOverflow.fade

       ),
       ),
       /* child: ElevatedButton(
            onPressed:(){

            },child: const Text("Click",style: TextStyle(
          color: Colors.orangeAccent,
          backgroundColor: Colors.blue
        ),)),*/
      ),
    );
  }
}

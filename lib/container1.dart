import 'package:flutter/material.dart';

class Container1 extends StatelessWidget {
  const Container1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Flutter"),
        ),
        body: Center(
          child: Container(
            height: 100,
            width: 200,
            color: Colors.blueGrey,
            child: const Center(
              child: Text(
                "Center of Container",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  backgroundColor: Colors.yellow,
                ),
              ),
            ),
          ),

        ),
    );
  }
}

// key : TextButton(
// child:Text("Click Here !!"),
// onPressed: (){
// print("Text Buttotn tapped"),
// },
// )

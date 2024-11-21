import 'package:flutter/material.dart';

class Button1 extends StatelessWidget {
  const Button1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:TextButton(
          child: const Text(
            "Click Me",
            style: TextStyle(
              color: Colors.yellow,
            ),
          ),
          onPressed: () {
            (" Text Button Tapped");
          },
          onLongPress: () {
            ("Long Pressed Button Tapped");
          },
        ),
        /*OutlinedButton(
          child: const Text(
            "Click Me",
            style: TextStyle(
              color: Colors.yellow,
            ),
          ),
          onPressed: () {
            (" Text Button Tapped");
          },
          onLongPress: () {
            ("Long Pressed Button Tapped");
          },
        ),*/
        //Elevated Button
        /*child: ElevatedButton(
          child: const Text(
            "Click Me",
            style: TextStyle(
              color: Colors.yellow,
            ),
          ),
          onPressed: () {
            (" Text Button Tapped");
          },
          onLongPress: () {
            ("Long Pressed Button Tapped");
          },
        ),*/
      ),
    );
  }
}

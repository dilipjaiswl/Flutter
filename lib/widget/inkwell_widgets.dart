import 'package:flutter/material.dart';

class InkwellWidgets extends StatelessWidget {
  const InkwellWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: const Text(
            "Ink well  Widgets",
            style: TextStyle(color: Colors.red),
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body:Center(
        child: InkWell(
          onTap: (){
            "On Tap Button";
          },
          onLongPress: (){
            "On LongPressed tap";
          },
          onDoubleTap:(){
            "On Double Tap";
          },
          child: Container(
            height: 200,
            width: 200,
            color: Colors.yellow,

          ),
        ),
      )
    );
  }
}

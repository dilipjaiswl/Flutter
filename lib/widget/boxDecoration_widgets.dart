//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonDecorationWidgets extends StatelessWidget {
  const ButtonDecorationWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          "Box Decoration Widgets",
          style: TextStyle(
              fontWeight:FontWeight.bold,
           // color: Colors.black54
          ),
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.greenAccent,
        child: Center(
          child: Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
              color: Colors.blueGrey,
              // borderRadius: const BorderRadius.only(topLeft:Radius.circular(30),bottomRight:Radius.circular(30)),
              border: Border.all(
                width: 4,
                color: Colors.black,
              ),
              boxShadow: const [
                BoxShadow(
                    blurRadius: 5,
                    spreadRadius:2 ,
                ),
              ],
              shape: BoxShape.circle,
            ),
          ),
        ),
      ),
    );
  }
}

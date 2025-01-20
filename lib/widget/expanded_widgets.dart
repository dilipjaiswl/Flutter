import 'package:flutter/material.dart';

class Hello extends StatelessWidget {
  const Hello({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Expanded Widgets"),
        backgroundColor: Colors.blue,
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              height: 80,
              width: 50,
              color: Colors.yellow,
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              height: 80,
              width: 50,
              color: Colors.purple,
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              height: 80,
              width: 50,
              color: Colors.red,
            ),
          ),
          Expanded(
            child: Container(
            height: 80,
              width: 50,
            color: Colors.blueGrey,
                ),
          ),
        ],
      ),
    );
  }
}

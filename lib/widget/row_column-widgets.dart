import 'package:flutter/material.dart';

class RowColumnWidgets extends StatelessWidget {
  const RowColumnWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Row Column Widgets",
          style: TextStyle(color: Colors.red, backgroundColor: Colors.grey),
        ),
      ),
      body:const Column(
        mainAxisAlignment: MainAxisAlignment.start,
       //  mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("R1",style:TextStyle(fontSize: 40)),
              Text("R2",style:TextStyle(fontSize: 40)),
              Text("R3",style:TextStyle(fontSize: 40)),
              Text("R4",style:TextStyle(fontSize: 40)),
            ],
          ),
          Text("A",style:TextStyle(fontSize: 40)),
          Text("B",style:TextStyle(fontSize: 40)),
          Text("C",style:TextStyle(fontSize: 40)),
          Text("D",style:TextStyle(fontSize: 40)),

        ],
      )
    );
  }
}

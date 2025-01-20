import 'package:flutter/material.dart';

class GridViewWidgets1 extends StatefulWidget {
  const GridViewWidgets1({super.key});

  @override
  State<GridViewWidgets1> createState() => _GridViewWidgets1State();
}

class _GridViewWidgets1State extends State<GridViewWidgets1> {
  @override
  Widget build(BuildContext context) {
    var arrColors=[
      Colors.red,
      Colors.yellow,
      Colors.blue,
      Colors.white,
     Colors.black,
      Colors.red,
      Colors.blueAccent,
      Colors.purple,
      Colors.greenAccent,
      Colors.grey,
    /*
      Colors.yellow,
     Colors.blue,
      Colors.white,
      Colors.black,*/
    ];
    return Scaffold(
      appBar: AppBar(
      title:const Text("Grid View Widgets"),
        backgroundColor: Colors.blueAccent,
      ),
      /* body:GridView.count(crossAxisCount: 4,
      crossAxisSpacing: 11,
      mainAxisSpacing: 11,
      children:[
        Container(color:Colors.yellow),
        Container(color:Colors.blue),
        Container(color:Colors.white),
        Container(color:Colors.black),
        Container(color:Colors.red),
        Container(color:Colors.blueAccent),
        Container(color:Colors.purple),
        Container(color:Colors.greenAccent),
        Container(color:Colors.grey),
        Container(color:Colors.yellow),
        Container(color:Colors.blue),
        Container(color:Colors.white),
        Container(color:Colors.black),
        Container(color:Colors.red),
        Container(color:Colors.blueAccent),
        Container(color:Colors.purple),
        Container(color:Colors.greenAccent),
        Container(color:Colors.grey),

      ]
      ),*/


      /* body:GridView.extent(maxCrossAxisExtent: 100,
      crossAxisSpacing: 11,
      mainAxisSpacing: 11,
      children:[
        Container(color:Colors.yellow),
        Container(color:Colors.blue),
        Container(color:Colors.white),
        Container(color:Colors.black),
        Container(color:Colors.red),
        Container(color:Colors.blueAccent),
        Container(color:Colors.purple),
        Container(color:Colors.greenAccent),
        Container(color:Colors.grey),
        Container(color:Colors.yellow),
        Container(color:Colors.blue),
        Container(color:Colors.white),
        Container(color:Colors.black),
        Container(color:Colors.red),
        Container(color:Colors.blueAccent),
        Container(color:Colors.purple),
        Container(color:Colors.greenAccent),
        Container(color:Colors.grey),

      ]
      ),*/
      body:GridView.builder( itemBuilder: (context,index) {
        return Container(color: arrColors[index]);
      },
        itemCount:arrColors.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing:11,
            mainAxisSpacing: 11
          ),
         ),
    );
  }
}

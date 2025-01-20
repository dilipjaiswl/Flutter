import 'package:flutter/material.dart';

class RichtextWidgets1 extends StatelessWidget {
  const RichtextWidgets1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("RichText Widgets"),
        backgroundColor: Colors.greenAccent,
      ),
      body: Center(
        child: RichText(
            text: const TextSpan(
              style: TextStyle(
                color: Colors.grey,
                fontSize: 21
              ),
              children:<TextSpan> [
             TextSpan(text: "Hello"),
             TextSpan(text: " Diliep!",style:TextStyle(
               fontSize: 25,
               color: Colors.blue,
               fontFamily: "FontMain",
               fontWeight: FontWeight.bold
             )
             ),
                TextSpan(
                  text: " Welcome to "
                ),
                TextSpan(
                  text: "Flutter!",
                  style: TextStyle(color:Colors.orangeAccent,
                    fontStyle: FontStyle.italic,
                    fontSize:38
                  )
                )
              ]
            )),
      ),
    );
  }
}


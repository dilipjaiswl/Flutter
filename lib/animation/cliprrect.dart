import 'package:flutter/material.dart';

class ClipRRect1 extends StatelessWidget {
  const ClipRRect1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Clip RRect  (Clipper)")),
        backgroundColor: Colors.orangeAccent,
      ),
body: Center(
  child: ClipRRect(
    borderRadius: BorderRadius.circular(21),
   // borderRadius: const BorderRadius.all(Radius.elliptical(21,71)),
    
    child:
    //  Image.asset('assets/images/Google.png.jpg')
      Container(
        width: 400,
        height: 200,
        color:Colors.orange,
      ),
  ),
),
    );
  }
}

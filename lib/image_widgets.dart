import "package:flutter/material.dart";

class ImageWidgets extends StatelessWidget {
  const ImageWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      title: const Text("Image Widgets",
          style: TextStyle(
              color: Colors.red,
              backgroundColor: Colors.grey
          ),
      ),
    ),
      body: Center(
          child: Container(
              height: 100,
              width: 100,
              child: Image.asset('assets/image/Flutter-01.png')),
      ),
    );
  }
}

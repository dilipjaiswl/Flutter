import 'package:flutter/material.dart';

class StackWidgets1 extends StatelessWidget {
  const StackWidgets1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stack Widgets"),
        backgroundColor: Colors.blue,
      ),
      body: SizedBox(
        height: 300,
        width: 300,
        child: Stack(
          children: [
            Container(
              height: 200,
              width: 200,
              color: Colors.red,
            ),
            Positioned(
              left: 20,
              top: 20,
              child: Container(
                height: 200,
                width: 200,
                color: Colors.blue,
              ),
            )
          ],
        ),
      ),
    );
  }
}

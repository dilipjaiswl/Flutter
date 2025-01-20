import 'package:flutter/material.dart';

class SizedBoxWidgets1 extends StatelessWidget {
  const SizedBoxWidgets1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Text("Sized Box"),
      ),
      body: Center(
        child: SizedBox(
          height: 50,
          width: 200,
          child:
              ElevatedButton(onPressed: () {

              }, child: const Text("Click Here")),
        ),
      ),
    );
  }
}

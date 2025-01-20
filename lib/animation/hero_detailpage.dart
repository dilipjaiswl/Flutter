import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail Page"),
        backgroundColor: Colors.greenAccent,
      ),
      body: Hero(
          tag:"BackGround",
          child:Image.asset('assets/image/Flutter-01.png'),
      ),
    );
  }
}

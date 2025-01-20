import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  const Avatar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: const Text("Avatar"),
      ),
      body: const Center(
        child: CircleAvatar(
          backgroundImage: AssetImage('assets/image/avatar2.png'),
          maxRadius: 50,
          child: Text("DJ",style: TextStyle(color: Colors.white),),
          backgroundColor: Colors.greenAccent,
        ),
      ),
    );
  }
}

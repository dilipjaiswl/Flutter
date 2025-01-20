import 'package:currency_converter/animation/hero_detailpage.dart';
import 'package:flutter/material.dart';

class HeroAnimation1 extends StatelessWidget {
  const HeroAnimation1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hero Animation"),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Container(
          child: InkWell(
            onTap:(){
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) =>DetailPage())
              );
            },
            child: Hero(
                tag: "BackGround",
                child: Image.asset('assets/image/Flutter-01.png',width: 100,
                height: 100,)
                ),
          ),
        ),
      ),
    );
  }
}

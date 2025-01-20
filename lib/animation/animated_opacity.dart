import 'package:currency_converter/widget/container1.dart';
import 'package:flutter/material.dart';

class AnimatedOpacity1 extends StatefulWidget {
  const AnimatedOpacity1({super.key});

  @override
  State<AnimatedOpacity1> createState() => _AnimatedOpacity1State();
}

class _AnimatedOpacity1State extends State<AnimatedOpacity1> {
  var myOpacity = 1.0;
  bool isVisible =true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Animated Opacity")),
        backgroundColor: Colors.greenAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedOpacity(
                opacity: myOpacity,
                duration: const Duration(seconds: 2),
                curve:Curves.slowMiddle,
                child: Container(
                  width: 100,
                  height: 200,
                  color: Colors.green.shade600,
                )),
            const SizedBox(
              height: 11,
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    if(isVisible){
                      myOpacity=1.0;
                      isVisible=false;
                    }else{
                      myOpacity=0.0;
                      isVisible=true;
                    }
                  });
                },
                child: const Text("Close"))
          ],
        ),
      ),
    );
  }
}

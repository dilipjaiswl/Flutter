
import 'package:flutter/material.dart';

class AnimatedContainer1 extends StatefulWidget {
  const AnimatedContainer1({super.key});

  @override
  State<AnimatedContainer1> createState() => _AnimatedContainer1State();
}

class _AnimatedContainer1State extends State<AnimatedContainer1> {
  var _height = 100.0;
  var _width = 200.0;
  bool flag = true;
  Color bgColor =Colors.blueAccent;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animated Container"),
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              duration: const Duration(seconds: 2),
              curve: Curves.slowMiddle,
              height: _height,
              width: _width,
              color: bgColor,
            ),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    if(flag){
                      _width=100.0;
                      _height=200.0;
                      bgColor= Colors.orange;
                      flag=false;
                    }else {
                      _width = 200.0;
                      _height = 100.0;
                      bgColor =Colors.blueAccent;
                      flag = true;
                    }
                  });
                },
                child: const Text("Animated"))
          ],
        ),
      ),
    );
  }
}

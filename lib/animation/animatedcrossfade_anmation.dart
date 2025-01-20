import 'package:flutter/material.dart';

class AnimatedCrossFade1 extends StatefulWidget {
  const AnimatedCrossFade1({super.key});

  @override
  State<AnimatedCrossFade1> createState() => _AnimatedCrossFade1State();
}

class _AnimatedCrossFade1State extends State<AnimatedCrossFade1> {
  var isFirst =true;
 /* @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 4),(){
      reLoad();
    },);

  }*/
  void reLoad(){
    setState(() {
      isFirst =false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Animated Cross Fade")),
        backgroundColor: Colors.greenAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedCrossFade(
               duration: const Duration(seconds:3),
                 firstChild: Container(
                   height: 300,
                   width: 300,
                   color: Colors.green,
                 ),
                 secondChild: Image.asset('assets/image/Flutter-01.png',
                   width: 200,
                   height: 200,
                 ),
              firstCurve: Curves.bounceInOut,
              secondCurve: Curves.easeInOut,

              crossFadeState:isFirst?CrossFadeState.showFirst:CrossFadeState.showSecond,
             ),
            const SizedBox(
              height: 11,
            ),
            ElevatedButton(
                onPressed:(){
                  reLoad();
                },child: const Text("Show"))
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class TweenAnimation1 extends StatefulWidget {
  const TweenAnimation1({super.key});

  @override
  State<TweenAnimation1> createState() => _TweenAnimation1State();
}

class _TweenAnimation1State extends State<TweenAnimation1> with SingleTickerProviderStateMixin {
  
  late AnimationController animationController;
  late Animation animation;
  late Animation colorAnimation ;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationController =AnimationController(
      vsync:this,
      duration: const Duration(seconds:4)
    );
    animation =Tween(
        begin:200.0,
        end: 0.0)
        .animate(animationController);
    colorAnimation =ColorTween(
        begin:Colors.blueAccent,
        end: Colors.green)
        .animate(animationController);
    animationController.addListener((){
     // print(animation.value);
      animationController.forward();
      setState(() {

      });
    });
   animationController.forward();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:const Text("Tween Animation"),
        backgroundColor:Colors.red,
      ),
      body:Center(
        child: Container(
          width:animation.value,
          height: animation.value,
          color: colorAnimation.value,
        ),
      )
    );
  }
}

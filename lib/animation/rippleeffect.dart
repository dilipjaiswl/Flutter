import 'package:flutter/material.dart';
//import 'package:flutter/rendering.dart';

class Rippleeffect1 extends StatefulWidget {
  const Rippleeffect1({super.key});

  @override
  State<Rippleeffect1> createState() => _Rippleeffect1State();
}

class _Rippleeffect1State extends State<Rippleeffect1> with SingleTickerProviderStateMixin {
  late Animation animation ;
  //late Animation colorAnimation;
  late AnimationController animationController;
  var listRadius =[100.0,150.0,200.0,250.0,300.0,350.0,400.0];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationController =AnimationController(
      vsync:this,
    duration: const Duration(seconds:3)
    );
    animation =Tween(
        begin: 0.0,
        end: 20.0)
        .animate(animationController);
   /* colorAnimation =ColorTween(
      begin: Colors.blue,
      end:Colors.red,
    ).animate(animationController);*/
    animationController.addListener((){
      setState(() {

      });
      animationController.repeat(reverse: false);
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ripple Effect"),
        backgroundColor: Colors.teal,
      ),
      body:  Center(
        child: Stack(
          children: listRadius.map((radius) {
            return Container(
              height: radius*animation.value,
              width: radius*animation.value,
              decoration:  BoxDecoration(
                shape: BoxShape.circle,
                color:Colors.blueAccent.withOpacity(1.0 - animation.value)
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}

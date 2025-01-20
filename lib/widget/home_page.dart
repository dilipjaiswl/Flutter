import 'package:flutter/material.dart';

import '../Design_Pattern/abstract_factory_design.dart';
import '../Design_Pattern/platform_button.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Factory Method ")),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            /*PlatformButton(TargetPlatform.android).build(
                    (){
                      print("Hello Flutter");
                    }, Text("Click")
            )*/

              AbstractFactoryImpl().buildButton(context, "Hello",(){} ),
              SizedBox(height: 15,),
              AbstractFactoryImpl().buildIndicator(context)

          ],
        ),
      ),
    );
  }
}

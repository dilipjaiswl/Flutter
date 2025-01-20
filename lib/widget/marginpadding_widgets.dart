import 'package:flutter/material.dart';

class ContentMarginPadding extends StatelessWidget {
  const ContentMarginPadding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.greenAccent,
          title: const Text(
            'ListView Widgets in Flutter',
          ),
      ),
      body: Container(
        margin: const EdgeInsets.only(top:10,left:10),
        color: Colors.purple,
        child: const Padding(
          //padding: EdgeInsets.only(top:20,),
          padding: EdgeInsets.all(10),
          child: Text("Hello World"),
        ),
      ),
    );
  }
}

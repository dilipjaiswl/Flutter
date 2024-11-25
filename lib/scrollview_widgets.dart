import 'package:flutter/material.dart';

class ScrollViewWidgets extends StatelessWidget {
  const ScrollViewWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Scroll View Widgets"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(right: 10),
                        height: 200,
                        width: 200,
                        color: Colors.black38,
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 10),
                        height: 200,
                        width: 200,
                        color: Colors.orange.shade600,
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 10),
                        height: 200,
                        width: 200,
                        color: Colors.green.shade500,
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 10),
                        height: 200,
                        width: 200,
                        color: Colors.blueGrey.shade500,
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 10),
                        height: 200,
                        width: 200,
                        color: Colors.brown.shade600,
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 10),
                        height: 200,
                        width: 200,
                        color: Colors.purpleAccent.shade100,
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 10),
                height: 200,
                color: Colors.blue,
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 10),
                height: 200,
                color: Colors.green,
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 10),
                height: 200,
                color: Colors.yellow,
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 10),
                height: 200,
                color: Colors.pink,
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 10),
                height: 200,
                color: Colors.red.shade500,
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 10),
                height: 200,
                color: Colors.blue,
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 10),
                height: 200,
                color: Colors.green,
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 10),
                height: 200,
                color: Colors.yellow,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

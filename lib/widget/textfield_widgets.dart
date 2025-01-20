import 'package:flutter/material.dart';

class TxtFieldWidgets extends StatelessWidget {
  const TxtFieldWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Text Field Widgets"),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: SizedBox(
            width: 350,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 const Text("Text Feild Widgets"),
                TextField(
                    decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40),
                    borderSide: const BorderSide(
                      color: Colors.orange,
                      width: 2,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40),
                    borderSide: const BorderSide(
                      color: Colors.blue,
                      width: 2,
                    ),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40),
                    borderSide: const BorderSide(
                      color: Colors.yellow,
                      width: 2,
                    ),
                  ),
                )),
                Container(
                  height: 15,
                ),
                TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40),
                            borderSide: const BorderSide(
                              color: Colors.black,
                            )))),
              ],
            ),
          ),
        ));
  }
}

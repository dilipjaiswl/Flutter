import 'package:flutter/material.dart';

class Listwheelscrollview1 extends StatefulWidget {
  const Listwheelscrollview1({super.key});

  @override
  State<Listwheelscrollview1> createState() => _Listwheelscrollview1State();
}

class _Listwheelscrollview1State extends State<Listwheelscrollview1> {
  var arrIndex = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14,15,16,17,18,19];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("List view Scrollview")),
        backgroundColor: Colors.redAccent,
      ),
      body: ListWheelScrollView(
        itemExtent: 200,
        children: arrIndex
            .map(
              (value) => Padding(
                padding: const EdgeInsets.all(11.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.redAccent,
                    borderRadius: BorderRadius.circular(21),
                  ),
                  width: double.infinity,
                  child: Center(
                    child: Text(
                      '$value',
                      style: const TextStyle(
                        fontSize: 25,
                      ),
                    ),
                  ),
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}

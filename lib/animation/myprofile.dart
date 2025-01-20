import 'package:flutter/material.dart';

class MyProfile extends StatelessWidget {
  var nameFromHome;
  MyProfile(this.nameFromHome);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("My Profile")),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
           Text(
            'Welcome,$nameFromHome',
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 34,
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          ElevatedButton(onPressed: () {}, child: const Text("Back"))
        ]),
      ),
    );
  }
}

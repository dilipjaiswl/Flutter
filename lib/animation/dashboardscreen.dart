//import 'package:currency_converter/main.dart';
import 'package:flutter/material.dart';

import 'myprofile.dart';

class DashBoardScreen extends StatelessWidget {
  var nameController=TextEditingController();
  //TextEditingController: creates a TextEditingController instance and assigns
  // it to the variable nameController.
  // This is a class in Flutter used to control
  // and monitor the text being edited in a TextField or TextFormField.;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text("DashBoard")),
          backgroundColor: Colors.greenAccent,
        ),
        body: Center(
          child: SizedBox(
            width: 300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "DashBoard Screen",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
                TextField(
                  controller:nameController ,
                ),
                const SizedBox(
                  height: 11,
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return MyProfile(nameController.text.toString());
                      }));
                    },
                    child: const Text("My Profile"))
              ],
            ),
          ),
        ));
  }
}

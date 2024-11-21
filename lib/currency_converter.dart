import 'package:flutter/material.dart';

class CurrencyConverter extends StatelessWidget {
  const CurrencyConverter({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('0',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                )),
            TextField(
              style: TextStyle(
                color: Colors.yellow,
              ),
              decoration: InputDecoration(
                  //label:Text("Enter the amount in USD"),
                  hintText: 'Enter the amount in USD',
                  hintStyle: TextStyle(
                    color: Colors.blue,
                  ),
                  // prefixText:"Rs"

                  // prefix: Icon(Icons.monetization_on),  //icon not set proper
                  prefixIcon: Icon(Icons.monetization_on),
                  prefixIconColor: Colors.blue,
                  filled: true,
                  fillColor: Colors.white,
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                    width: 2.0,
                    style: BorderStyle.solid,
                  ),
                    // borderRadius: BorderRadius.horizontal(
                    //   right:Radius.circular(60),
                    // ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(60),
                    ),
                  ),

                  //  suffixIcon: Icon(Icons.monetization_on),
                  // suffixIconColor: Colors.blue,
                  //icon set proper
                  ),
            ),
          ],
        ),
      ),
    );
  }
}

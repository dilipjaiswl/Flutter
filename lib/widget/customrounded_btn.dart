import 'package:currency_converter/widget/rounded_btn_widgets.dart';
import 'package:flutter/material.dart';

class CustomRoundedBtn extends StatefulWidget {
  const CustomRoundedBtn({super.key});

  @override
  State<CustomRoundedBtn> createState() => _CustomRoundedBtnState();
}

class _CustomRoundedBtnState extends State<CustomRoundedBtn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Custom Rounded Button"),
          backgroundColor: Colors.greenAccent,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 120,
                child: RoundedButton(
                  btnName: "Login ",
                  icon: const Icon(Icons.login),
                  callBack: () {
                    print("Logged in");
                  },
                  //textstyle: TextStyle(fontFamily: ),
                ),
              ),
              Container(
                height: 10,
              ),
              Container(
                width: 120,
                child: RoundedButton(
                  btnName: "Play",
                  icon: const Icon(Icons.play_arrow),
                  callBack: () {
                    print("Signed Up Successfully");
                  },
                  bgColor: Colors.red,
                  //textstyle: TextStyle(fontFamily: ),
                ),
              ),
              Container(
                height: 10,
              ),
              SizedBox(
                width: 120,
                child: RoundedButton(
                  btnName: "Replay",
                  icon: const Icon(Icons.replay),
                  callBack: () {
                    print("Music Playing");
                  },
                  bgColor: Colors.orange,
                  //textstyle: TextStyle(fontFamily: ),
                ),
              ),
            ],
          ),
        ));
  }
}

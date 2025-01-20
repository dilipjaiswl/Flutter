import 'package:flutter/material.dart';

//import '../widget/rounded_btn_widgets.dart';

class BMIApp extends StatefulWidget {
  const BMIApp({super.key});
  @override
  State<BMIApp> createState() => _BMIAppState();
}

class _BMIAppState extends State<BMIApp> {
  var weightController = TextEditingController();
  var inController = TextEditingController();
  var ftController = TextEditingController();
  var result = "";
 // var bgColor;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
            child: Text(
          "BMI App",
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.normal),
        )),
        backgroundColor: Colors.blueAccent,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors:[
              Color(0xff74ebd5),
            Color(0xfffface6),
            //  Color(0xffa6c0fe),
            //  Color(0xfff68084),
             // Colors.white,
              //Colors.black,
            ],
            begin: FractionalOffset(1.0, 0.5),
            end: FractionalOffset(0.5, 1.0)
          ),
        ),
        child: Center(
          child: SizedBox(
            width: 300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  controller: weightController,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    label: Text("Weight(in Kgs)"),
                    prefixIcon: Icon(Icons.line_weight),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: ftController,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                      label: Text("Height(in ft)"),
                      prefixIcon: Icon(Icons.height)),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: inController,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                      label: Text("Height(in inch)"),
                      prefixIcon: Icon(Icons.height)),
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue, // Blue background
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 10),
                  ),
                  onPressed: () {
                    var wt = weightController.text.toString();
                    var ft = inController.text.toString();
                    var inch = ftController.text.toString();

                    if (wt != "" && ft != "" && inch != "") {
                      var iWt = int.parse(wt);
                      var iFt = int.parse(ft);
                      var iInch = int.parse(inch);
                      //Converting the data as per required
                      var tInch = (iFt * 12) + iInch;
                      var tCm = tInch * 2.54;
                      var tMtr = tCm / 100;
                      var bmi = iWt / (tMtr * tMtr);
                      var msg="";
                      if(bmi>25){
                        msg="You're OverWeight";
                      //  bgColor=Colors.orangeAccent;
                      }
                      else if(bmi<18){
                      msg="You're UnderWeight";
                     // bgColor=Colors.redAccent;
                      }
                      else{
                        msg="You're Healthy";
                       // bgColor=Colors.greenAccent;
                      }
                      setState(() {
                        result = "$msg ,\nYour BMI is:${bmi.toStringAsFixed(2)}";
                      });
                    } else {
                      setState(() {
                        result = "Please Enter the valid Input.";
                      });
                    }
                  },
                  child: const Text(
                    "Calculate",
                    style:TextStyle(

                      color: Colors.white,
                      fontSize: 18
                    )
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  result,
                  style: const TextStyle(
                    fontSize: 23,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

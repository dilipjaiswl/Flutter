import 'package:flutter/material.dart';

class RangeSlider1 extends StatefulWidget {
  const RangeSlider1({super.key});

  @override
  State<RangeSlider1> createState() => _RangeSlider1State();
}
RangeValues values=RangeValues(0, 100);

class _RangeSlider1State extends State<RangeSlider1> {
  RangeLabels labels=RangeLabels(values.start.toString(), values.end.toString());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Center(child: Text("Range Slider")),
      ),
      body: RangeSlider(
          values: values,
          labels: labels,
          divisions: 20,
          min: 0,
          max: 100,
          activeColor: Colors.green,
          inactiveColor: Colors.green.shade100,
          onChanged:(newValue){
            values=newValue;
            setState(() {

            });

          }
      ),
    );
  }
}

import 'package:flutter/material.dart';

class BMICalculator extends StatefulWidget {
  @override
  _BMICalculatorState createState() => _BMICalculatorState();
}

class _BMICalculatorState extends State<BMICalculator> {
  final heightController = TextEditingController();
  final weightController = TextEditingController();

  String result = "";
  String message = "";

  void calculateBMI() {
    final double? height = double.tryParse(heightController.text);
    final double? weight = double.tryParse(weightController.text);

    if (height == null || weight == null || height <= 0 || weight <= 0) {
      setState(() {
        result = "Invalid input!";
        message = "";
      });
      return;
    }

    final double bmi = weight / ((height / 100) * (height / 100));
    setState(() {
      result = "Your BMI is ${bmi.toStringAsFixed(2)}";
      if (bmi < 18.5) {
        message = "You are underweight.";
      } else if (bmi >= 18.5 && bmi < 24.9) {
        message = "You have a normal weight.";
      } else if (bmi >= 25 && bmi < 29.9) {
        message = "You are overweight.";
      } else {
        message = "You are obese.";
      }
    });
  }

  @override
  void dispose() {
    heightController.dispose();
    weightController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI Calculator'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: heightController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Height (cm)',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),
            TextField(
              controller: weightController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Weight (kg)',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: calculateBMI,
              child: const Text('Calculate BMI'),
            ),
            const SizedBox(height: 24),
            if (result.isNotEmpty)
              Column(
                children: [
                  Text(
                    result,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    message,
                    style: TextStyle(fontSize: 18, color: Colors.grey[700]),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}




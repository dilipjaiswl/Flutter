import 'package:flutter/material.dart';

class DateTimePickers extends StatefulWidget {
  const DateTimePickers({super.key});

  @override
  State<DateTimePickers> createState() => _DateTimePickersState();
}

class _DateTimePickersState extends State<DateTimePickers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Date Time Picker"),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Show Date"),
            ElevatedButton(
                onPressed: () async {
                  var datePicker = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2001),
                    lastDate: DateTime(2025),
                  );
                },
                child: const Text("Show Date ")),
            ElevatedButton(
                onPressed: () {
                  var timePicker = showTimePicker(
                      context: context, initialTime: TimeOfDay.now());
                },
                child: const Text("Show Time"))
          ],
        ),
      ),
    );
  }
}

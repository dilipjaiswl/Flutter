import 'package:flutter/material.dart';
import 'package:intl/intl.dart';


class CurrentDateTime extends StatefulWidget {
  const CurrentDateTime({super.key});
  @override
 State<CurrentDateTime> createState() => CurrentDateTimeState();
              //OR
// State<CurrentDateTime> createState() {
// return CurrentDateTimeState();
// }
}

class CurrentDateTimeState extends State<CurrentDateTime> {
  @override
  Widget build(BuildContext context) {
    var time = DateTime.now();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Text("Time and Date"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           //Text('Current Day is: ${time.day}-${time.month}-${time.year}'),
           // Text('Current time is: ${time.hour}:${time.minute}:${time.second}'),
           // Text('Current Time: ${DateFormat("jms").format(time)}'),
            //or
            Text('Current Time: ${DateFormat.jms().format(time)}'),
            //Text(DateFormat.ABBR_MONTH),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  // print(DateFormat.yMMMd().format(DateTime.now()));

                });
              },
              child: const Text("Current Time"),
            )
          ],
        ),
      ),
    );
  }
}
// import 'package:flutter/material.dart';
//
// class Datetime extends StatefulWidget {
//   const Datetime({super.key});
//
//   @override
//   State<Datetime> createState() => _DatetimeState();
// }
//
// class _DatetimeState extends State<Datetime> {
//   @override
//   Widget build(BuildContext context) {
//     return const Placeholder();
//   }
// }

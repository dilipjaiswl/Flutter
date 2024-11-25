import 'package:flutter/material.dart';

class ListviewWidgets extends StatelessWidget {
  const ListviewWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    List<dynamic>  employeeName =["Dilip","Rajesh","Bharat","Sankey","Chinampa","Shubha","Anil","Sunil","Asuman","Abhinav"];
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.greenAccent,
          title: const Text('ListView Widgets in Flutter',

          )
      ),
      body: ListView.separated(itemBuilder: (context,  index) {
        return  Text(employeeName[index],style:const TextStyle(
          color: Colors.blue,
          fontSize: 20,
          fontWeight: FontWeight.w700,
        ));
      },
        itemCount: employeeName.length,
        separatorBuilder: (BuildContext context, int index) {
        return const Divider(height: 80,thickness: 4,);
        },

      ),
   /*  body: ListView.builder(itemBuilder: (context,  index) {
        return  Text(employeeName[index],style:const TextStyle(
          color: Colors.blue,
          fontSize: 20,
          fontWeight: FontWeight.w700,
        ));
      },
        itemCount: employeeName.length,

      ),*/
    );
  }


}

/* children: Column(

  children: [
  Padding(
  padding: EdgeInsets.all(8.0),
  child: Text("One",style:TextStyle(
  fontSize: 20,
  fontWeight:FontWeight.bold,
  )),
  ),
  Padding(
  padding: EdgeInsets.all(8.0),
  child: Text("Three",style:TextStyle(
  fontSize: 20,
  fontWeight:FontWeight.bold,
  )),
  ),
  Padding(
  padding: EdgeInsets.all(8.0),
  child: Text("Two",style:TextStyle(
  fontSize: 20,
  fontWeight:FontWeight.bold,
  )),
  ),
  Padding(
  padding: EdgeInsets.all(8.0),
  child: Text("Four",style:TextStyle(
  fontSize: 20,
  fontWeight:FontWeight.bold,
  )),
  ),
  Padding(
  padding: EdgeInsets.all(8.0),
  child: Text("Five",style:TextStyle(
  fontSize: 20,
  fontWeight:FontWeight.bold,
  )),
  ),
  ],
  ),
  ),*/









import 'package:flutter/material.dart';

class ListTileWidgets1 extends StatelessWidget {
  const ListTileWidgets1({super.key});

  @override
  Widget build(BuildContext context) {
    List<dynamic> employeeName = [
      "Dilip",
      "Rajesh",
      "Bharat",
      "Sanket",
      "Chinampa",
      "Monu",
      "Anil",
      "Sunil",
      "Asuman",
      "Abhinav",
      "Dilip",
      "Rajesh",
      "Bharat",
      "Sankey",
      "Chinampa",
      "Shubha",
      "Anil",
      "Sunil",
      "Asuman",
      "Abhinav",
      "Abhinav",
      "Dilip",
      "Rajesh",
      "Bharat",
      "Aadarsh",
      "Chittaa",
      "Shubha",
      "Anil",
      "Sunil",
      "Asuman",
      "Abhinav"
    ];
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.greenAccent,
          title: const Text(
            'WhatsApp',
          )),
      body: ListView.separated(
          itemBuilder: (context, index) {
            return Card(
             elevation: 5,
              shadowColor: Colors.deepOrangeAccent.shade400,
              child: ListTile(
                leading: const CircleAvatar(
                  backgroundImage: AssetImage('assets/image/avatar2.png'),
                  maxRadius: 40,
                  backgroundColor: Colors.greenAccent,
                  //  child: Text("DJ",style: TextStyle(color: Colors.white),),
                ),
                title: Text(employeeName[index],style: const TextStyle(
                  fontFamily: "FontMain",
                ),),
                subtitle: const Text("Mobile No"),
                trailing: const Icon(Icons.add_ic_call_sharp),
              ),
            );
          },
          itemCount: employeeName.length,
          separatorBuilder: (BuildContext context, int index) {
            return const Divider(
              height: 10,
              thickness: 2,
            );
          }),
    );
  }
}
/*  body: ListView.builder(itemBuilder: (context,  index) {
        return  Text(employeeName[index],style:const TextStyle(
          color: Colors.blue,
          fontSize: 20,
          fontWeight: FontWeight.w700,
        ));
      },
        itemCount: employeeName.length,

      ),*/

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

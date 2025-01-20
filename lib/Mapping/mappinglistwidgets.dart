import 'package:flutter/material.dart';
//import 'package:flutter/rendering.dart';

class MappingList extends StatelessWidget {
  const MappingList({super.key});

  @override
  Widget build(BuildContext context) {
    var arrData= [
      {
        'name':"Dilip",
        'Mobno':'9696880045',
        'unread':'3'
      },
      {
        'name':"Anil",
        'Mobno':'9696880068',
        'unread':'5'
      },
      {
        'name':"Sunil",
        'Mobno':'9696880008',
        'unread':'2'
      },
      {
        'name':"Sunny",
        'Mobno':'9696000000',
        'unread':'3'
      },
      {
        'name':"Dilip",
        'Mobno':'9696880045',
        'unread':'3'
      },
      {
        'name':"Anil",
        'Mobno':'9696880068',
        'unread':'5'
      },
      {
        'name':"Sunil",
        'Mobno':'9696880008',
        'unread':'2'
      },
      {
        'name':"Dilip",
        'Mobno':'9696880045',
        'unread':'3'
      },
      {
        'name':"Anil",
        'Mobno':'9696880068',
        'unread':'5'
      },
      {
        'name':"Sunil",
        'Mobno':'9696880008',
        'unread':'2'
      },
      {
        'name':"Sunny",
        'Mobno':'9696000000',
        'unread':'3'
      },
      {
        'name':"Dilip",
        'Mobno':'9696880045',
        'unread':'3'
      },
      {
        'name':"Anil",
        'Mobno':'9696880068',
        'unread':'5'
      },
      {
        'name':"Sunil",
        'Mobno':'9696880008',
        'unread':'2'
      },
      {
        'name':"Sunny",
        'Mobno':'9696000000',
        'unread':'3'
      },
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title:const Text("Mapping List To Widgets"),
      ),
      body: ListView(
        children: arrData.map((value) {
          return  ListTile(
            leading: const Icon(Icons.account_circle_rounded),
            title: Text(value['name'].toString()),
            subtitle: Text(value['Mobno'].toString()),
            trailing: CircleAvatar(
              radius:14,
                backgroundColor: Colors.greenAccent,
                child: Text(value['unread'].toString())),
          );
        }).toList(),
      ),


    );
  }
}

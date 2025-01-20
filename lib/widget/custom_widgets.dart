import 'package:flutter/material.dart';

class CustomWidgets1 extends StatelessWidget {
  const CustomWidgets1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Center(
            child: Text("Custom Widgets" )
        ),
        backgroundColor: Colors.blueAccent,
      ),
      body: const Column(
        children:
        [CategoriesItems(), ContactItems(), DeleteButton()],
      ),
    );
  }
}

class CategoriesItems extends StatelessWidget{
  const CategoriesItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        color: Colors.greenAccent,
        child: ListView.builder(
          itemCount:20,
          scrollDirection:Axis.horizontal,
          itemBuilder: (context,index) =>
          const Padding(
            padding: EdgeInsets.all(11.0),
            child: SizedBox(
              height: 100,
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/image/Google.png.jpg'),
                minRadius: 35,
              ),
            ),

          ),
        ),
      ),
    );

  }

}
class ContactItems extends StatelessWidget {
  const ContactItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 5,
      child: Container(
        color: Colors.deepOrangeAccent,
        child: ListView.builder(itemBuilder: (context,index)=>
        const Card(
            //shadowColor:Colors.green,
           // elevation:12.0,
          child: ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/image/avatar2.png'),
            ),
            title:Text("Name") ,
            subtitle: Text("Mob No"),
            trailing: Icon(Icons.delete),
          ),
        )
        ),
      ),
    );
  }
}
class DeleteButton extends StatelessWidget {
  const DeleteButton({super.key});
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: (){
          "Deleted All User";
        },
        child: const Text("Delete All", style:TextStyle(
          fontWeight: FontWeight.bold,
        ),
        )
    );
  }
}



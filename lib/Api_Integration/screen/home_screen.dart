import 'package:flutter/material.dart';
//import 'package:intl/intl.dart';
import '../model/user.dart';
import '../services/user_api.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<User> users = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchUsers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          " Rest Api Integration",
          style: TextStyle(fontWeight: FontWeight.bold),
        )),
        backgroundColor: Colors.blueAccent,
      ),
      body: ListView.builder(
          itemCount: users.length,
          itemBuilder: (context, index) {
            final user = users[index];
            // final email =user.email;
            /*final gender = user.gender;
            final phone = user.phone;
            final name = user.name;*/
           // final formattedDate = DateFormat('yyyy-MM-dd').format(user.dob.date);
            return ListTile(
              leading: CircleAvatar(child: Text('${index + 1}')),
             // title:  Text(user.fullName),
             // title: Text(user.location.city),
              title: Text(user.fullName),
              //subtitle: Text(user.dob.date.toLocal().toString()),
             // subtitle: Text(user.location.state),
              subtitle: Text(user.location.city),
              trailing: Text(user.location.country),
            );
          }),
    );
  }

  Future<void> fetchUsers() async {
    final response = await UserApi.fetchUsers();
    setState(() {
      users = response;
    });
  }
}

/*class _HomeScreenState extends State<HomeScreen> {
  List<dynamic> users =[];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text(" Rest Api Integration",style:TextStyle(
          fontWeight: FontWeight.bold
        ),)),
        backgroundColor: Colors.blueAccent,
      ),
      body: ListView.builder(
        itemCount: users.length,
          itemBuilder: (context,index){
           final user =users[index];
           // right final name = "${user['name']['first']} ${user['name']['last']}";]
           final name ="${user['name']['first']}${user['name']['last']}";
           final email =user['email'];
           final gender =user['gender'];
         // Wrong = final name = user['name']['first']['last'];
           final imageUrl =user['picture']['thumbnail'];
           return ListTile(
             leading:ClipRRect(
             borderRadius: BorderRadius.circular(100),
               child:Image.network(imageUrl ),
               ),
               title:Text(name),
             subtitle: Text(email),
             trailing: Text(gender),
           );
          }
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: fetchUsers,
      ),
    );
  }

  fetchUsers() async {
    if (kDebugMode) {
      print("Fetch User Called");
    }
    final url ='https://randomuser.me/api/?results=50';
    final uri =Uri.parse(url);
    final response = await http.get(uri);
    final body=response.body;
    final json=jsonDecode(body);
    setState(() {
      users =json['results'];
    });
    if (kDebugMode) {
      print("Fetch User Completed");
    }


  }
  }*/
/*
class _HomeScreenState extends State<HomeScreen> {
  List<dynamic> users = [];
  bool isLoading = false; // Track loading state

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Rest Api Integration",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        backgroundColor: Colors.blueAccent,
      ),
      body: isLoading // Show loading indicator or the ListView
          ? Center(
        child: CircularProgressIndicator(), // Loading indicator
      )
          : ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index) {
          final user = users[index];
          final name = "${user['name']['first']} ${user['name']['last']}";
          final email = user['email'];
          final gender = user['gender'];
          final imageUrl = user['picture']['thumbnail'];

          return ListTile(
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.network(imageUrl),
            ),
            title: Text(name),
            subtitle: Text(email),
            trailing: Text(gender),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: fetchUsers,
      ),
    );
  }

  fetchUsers() async {
    setState(() {
      isLoading = true; // Start loading
    });

    try {
      final url = 'https://randomuser.me/api/?results=50';
      final uri = Uri.parse(url);
      final response = await http.get(uri);

      if (response.statusCode == 200) {
        final body = response.body;
        final json = jsonDecode(body);
        setState(() {
          users = json['results'];
        });
      } else {
        if (kDebugMode) {
          print("Failed to fetch data: ${response.statusCode}");
        }
      }
    } catch (e) {
      if (kDebugMode) {
        print("Error fetching users: $e");
      }
    } finally {
      setState(() {
        isLoading = false; // Stop loading
      });
    }
  }
}



*/

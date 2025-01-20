import 'dart:convert';
//import 'package:currency_converter/Api_Integration/model/user_dob.dart';
//import 'package:currency_converter/Api_Integration/model/user_location.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/foundation.dart';
import '../model/user.dart';
//import '../model/username.dart';

class UserApi {
  static Future<List<User>> fetchUsers() async {
    if (kDebugMode) {
      print("Fetch User Called");
    }
    final url = 'https://randomuser.me/api/?results=50';
    final uri = Uri.parse(url);
    final response = await http.get(uri);
    final body = response.body;
    final json = jsonDecode(body);
    final results = json['results'] as List<dynamic>;
    final users = results.map((e) {
     return User.fromMap(e);

     /* final name = UserName(
        title: e['name']['title'],
        first: e['name']['first'],
        last: e['name']['last'],
      );

      final date = e['dob']['date'];
      final dob = UserDob(
        age: e['dob']['age'],
        date: DateTime.parse(date),
      );
      final street =UserLocationStreet(
          number: e['location']['street']['number'],
          name: e['location']['street']['name']);
      final location =UserLocation(
          city: e['location']['city'],
          state:e['location']['state'] ,
          country:e['location']['country'],
          street: street
      );
      return User(
        email: e['email'],
        gender: e['gender'],
        phone: e['phone'],
        nat: e['nat'],
        name: name,
        dob: dob,
        location: location,
      );*/
    }).toList();
    return users;
  }
}

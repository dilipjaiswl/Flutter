import 'package:currency_converter/Api_Integration/model/user_dob.dart';
import 'package:currency_converter/Api_Integration/model/user_location.dart';
import 'package:currency_converter/Api_Integration/model/username.dart';

class User {
   late final String email;
   late final String gender;
   late final String phone;
   late final String nat;
   final UserName name;
   final UserDob dob;
   final UserLocation location;
  //User Constructor
   User({
     required this.email,
      required this.gender,
      required this.phone,
      required this.nat,
     required this.name,
     required this.dob,
     required this.location
});
   factory User.fromMap(Map<String,dynamic> e){

     // Without Factory Constructor

     /*final name = UserName(
       title: e['name']['title'],
       first: e['name']['first'],
       last: e['name']['last'],
     );*/

     // With Factory Constructor
     final name=UserName.fromMap(e['name']);

     // Without Factory Constructor
     final dob =UserDob.fromMap(e['dob']);
     /*final date = e['dob']['date'];
     final dob = UserDob(
       age: e['dob']['age'],
       date: DateTime.parse(date),
     );*/

     //Without Factory Constructor
     /*final street =UserLocationStreet(
         number: e['location']['street']['number'],
         name: e['location']['street']['name']);*/

     // With Factory Constructor
     print('Street data: ${e['street']}');

     final street =UserLocationStreet.fromMap(e['street']);

     //Without Factory Constructor
     /*final location =UserLocation(
         city: e['location']['city'],
         state:e['location']['state'] ,
         country:e['location']['country'],
         street: street
     );*/
     // With Factory Constructor
     final location =UserLocation.fromMap(e['location']);

     return User(
       email: e['email'],
       gender: e['gender'],
       phone: e['phone'],
       nat: e['nat'],
       name: name,
       dob: dob,
       location: location,
     );
   }
   String get fullName{
     return '${name.title} ${name.first} ${name.last}';
   }
   String get fullLocation{
     return '${location.city} ${location.state} ${location.country}';
   }

}

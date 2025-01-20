class UserLocation{
  late final UserLocationStreet street;
  late final String city;
  late final String state;
  late final String country;
  UserLocation({
    required this.street,
    required this.city,
    required this.state,
    required this.country
});
  factory UserLocation.fromMap(Map<String,dynamic> json){
    final street =UserLocationStreet.fromMap(json['street']);
   return UserLocation(
       city: json['city'],
       state:json['state'] ,
       country:json['country'],
     street: street,
   );
  }

}
class UserLocationStreet{
  late final int number;
  late final String name;
  UserLocationStreet({
    required this.number,
    required this.name,
});
  factory UserLocationStreet.fromMap(Map<String,dynamic> json){
    return UserLocationStreet(
        number: json['number'],
        name: json['name']
    );
  }
}

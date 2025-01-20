class UserDob{
  late final DateTime date;
  late final int age;
  //Constructor of dob
  UserDob({
    required this.date,
    required this.age,
});
  factory UserDob.fromMap(Map<String,dynamic> json){
    return UserDob(
        age: json['age'],
        date: DateTime.parse(json['date']),
    );
  }
}
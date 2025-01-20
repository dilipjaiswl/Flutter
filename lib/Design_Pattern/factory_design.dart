//Factory Method
import 'package:flutter/foundation.dart';

abstract class Employee{
  void work();
 factory Employee (String type){
    switch(type){
      case "programmer":return Programmer();
      case "hrmanager" : return HRManager();
      default:return Programmer();
    }

  }
}
class Programmer implements Employee{
  @override
  void work() {
  print("Coding the App");
  }
}
class HRManager implements Employee{
  @override
  void work() {
    print("Recruiting the People");
  }
}
 class FactoryMethod {
  static Employee getEmployee(String type){
    switch(type){
      case "programmer":return Programmer();
      case "hrmanager" : return HRManager();
      default:return Programmer();
    }

  }
 }
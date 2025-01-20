//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

abstract class PlatformButton{
  Widget build(VoidCallback onPressed, Widget child);

  factory PlatformButton(TargetPlatform platform){
    switch(platform){
      case TargetPlatform.android:
        return AndroidButton();
      default :return AndroidButton();
    }
  }
}
class AndroidButton implements PlatformButton{
  @override
  Widget build(VoidCallback onPressed, Widget child) {
    return ElevatedButton(
        onPressed: onPressed,
        child: child);
  }

}
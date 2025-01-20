import 'dart:ui';

import 'package:currency_converter/Design_Pattern/platform_button.dart';
import 'package:currency_converter/Design_Pattern/platform_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'abstract_factory_design.dart';

abstract class AbstractFactory{
  Widget buildButton(BuildContext context,String text, VoidCallback onPressed);
  Widget buildIndicator(BuildContext context);
}
class AbstractFactoryImpl implements AbstractFactory{
  @override
  Widget buildButton(BuildContext context, String text, VoidCallback onPressed) {
   return PlatformButton(Theme.of(context).platform).build(
       onPressed,
       Text(text),
   );
  }

  @override
  Widget buildIndicator(BuildContext context) {
    return PlatformIndicator(Theme.of(context).platform).build();
  }

}



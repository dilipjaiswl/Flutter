import 'dart:io';

import 'package:currency_converter/widget/listtile_widgets.dart';
import 'package:flutter/material.dart';
//import 'package:image_picker/image_picker.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.green),
      home: const ListTileWidgets1(),
      debugShowCheckedModeBanner: false,
    );
  }
}


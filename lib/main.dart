import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:taskbunny/pages/home_page.dart';

void main() async {
  // Initialize Hive
  await Hive.initFlutter();

  //open a box
  var box = await Hive.openBox('mybox');

  // Open a box (or multiple boxes)
  await Hive.openBox('myBox');

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeData(primarySwatch: Colors.deepPurple),
    ); // Added missing semicolon
  }
}

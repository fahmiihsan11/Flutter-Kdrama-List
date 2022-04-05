import 'package:flutter/material.dart';
import 'package:kdrama_db/main_screen.dart';

 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'KDrama DB',
      theme: ThemeData(
        brightness: Brightness.dark,
       ),
      home: MainScreen(),
    );
  }
}



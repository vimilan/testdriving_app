import 'package:flutter/material.dart';
import 'package:testdriving_app/Screen/spscreen.dart';
void main()=>runApp(MyApps());
class MyApps extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
debugShowCheckedModeBanner: false,

      title: 'Track',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home:Spscreen(),
    );
  }
}


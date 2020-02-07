import 'dart:async';

import 'package:flutter/material.dart';
import 'package:testdriving_app/Screen/registerpage.dart';
class Spscreen extends StatefulWidget {
  @override
  _SpscreenState createState() => _SpscreenState();
}

class _SpscreenState extends State<Spscreen> {
  void load(){
     Navigator.push(context, MaterialPageRoute(builder: (context)=>RegisterPage()));
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 4),load);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RegisterPage'),
        actions: <Widget>[
        ],
      ),
      body: Center(
        child: Image.asset('images/spscreen.jpg'),
      ),
    );
  }
}

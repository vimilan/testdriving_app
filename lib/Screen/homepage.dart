import 'package:flutter/material.dart';
class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  Widget Tablet=Container(
    child: Icon(Icons.arrow_forward),
  );
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
         length: 6,
      child: Scaffold(
        appBar: AppBar(
          title: Text('MyPage'),
         bottom: TabBar(
            tabs: <Widget>[
              Tab(
                child: Text('Event'),
              ),
              Tab(
                child: Text('Event' ),
              ),
              Tab(
                child: Text('Event'),
              ),
              Tab(
                child: Text('Event'),
              ),
              Tab(
                child: Text('Event'),
              ),
              Tab(
                child: Icon(Icons.arrow_forward_ios,),
              ),
            ],
          ),
        ),
         drawer: Drawer(
         ),
         body: TabBarView(
           children: <Widget>[
             Tablet,
             Icon(Icons.arrow_forward_ios),
             Icon(Icons.arrow_forward_ios),
             Tablet,
             Icon(Icons.arrow_forward_ios),
             Icon(Icons.arrow_forward_ios)
           ],
         ),
      ),
    );
  }
}
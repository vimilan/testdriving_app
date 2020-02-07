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
         length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('MyPage'),
         bottom: TabBar(
            tabs: <Widget>[
              Tab(
                child: Text('About'),
              ),
              Tab(
                child: Text('Contact' ),
              ),
              Tab(
                child: Text('Logout'),
              ),

            ],
          ),
        ),
         drawer: Drawer(
           child: ListView(
             children: <Widget>[
               DrawerHeader(
                 child: Text('Username'),
               ),
               ListTile(
                 title: Text(
                   'Electronics'
                 ),
                 trailing: Icon(Icons.account_box),
                 leading: Icon(Icons.arrow_forward),
               )
             ],
           ),
         ),
         body: TabBarView(
           children: <Widget>[
             Tablet,
             Icon(Icons.arrow_forward_ios),
             Icon(Icons.arrow_forward_ios),
    ],
         ),
      ),
    );
  }
}
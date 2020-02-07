import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:testdriving_app/Screen/homepage.dart';
class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _user=TextEditingController();
  final _email=TextEditingController();
  final _mobile=TextEditingController();
  final _address=TextEditingController();
@override
  void dispose() {
     super.dispose();
    _user.dispose();
    _email.dispose();
    _mobile.dispose();
    _address.dispose();
  }

  AppShareddata() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('user', _user.text);
    await prefs.setString('email', _email.text);
    await prefs.setString('mobile', _mobile.text);
    await prefs.setString('address', _address.text);
    print(prefs.get('user'));
    print(prefs.get('email'));
    print(prefs.get('mobile'));
    print(prefs.get('address'));
    String vat=prefs.get('address');
    print('Pressed $vat times.');
  }
  @override
  Widget build(BuildContext context) {
    Widget user=Container(
      padding: EdgeInsets.only(left: 10,right: 10,top: 10,bottom: 10),
      child:TextFormField(
        controller: _user,
        keyboardType: TextInputType.text,
        decoration:InputDecoration(
          hintText: 'Enter Username',
          labelText: 'Enter Username',
          icon: Icon(Icons.supervised_user_circle),
        ),
      ) ,
    );
    Widget email=Container(
      padding: EdgeInsets.only(left: 10,right: 10,top: 10,bottom: 10),
      child:TextFormField(
        controller: _email,
        keyboardType: TextInputType.text,
        decoration:InputDecoration(
          hintText: 'Enter Email',
          labelText: 'Enter Email',
          icon: Icon(Icons.mail),

        ),
      ) ,
    );
    Widget Mobile=Container(

      padding: EdgeInsets.only(left: 10,right: 10,top: 10,bottom: 10),
      child:TextFormField(
        controller: _mobile,
        keyboardType: TextInputType.text,
        decoration:InputDecoration(
          hintText: 'Enter Mobile No.',
          labelText: 'Enter Mobile No.',
          icon: Icon(Icons.mobile_screen_share),

        ),
      ) ,
    );
    Widget newdata=Container(
      padding: EdgeInsets.only(left: 10,right: 10,top: 10,bottom: 10),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            TextFormField(
              controller: _address,
              decoration: InputDecoration(
                  labelText: 'Address',
                  hintText: 'Address',
                  prefixIcon: Icon(Icons.ac_unit),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(32.0))
                  )
              ),


            )      ],
        ),
      ),
    );
    Widget button=Container(
      child: Column(
        children: <Widget>[
          RaisedButton(
            hoverColor: Colors.redAccent,
            onPressed: (){
              AppShareddata();
          Navigator.push(context, MaterialPageRoute(builder: (context)=>Homepage()));
            },
            child: Text('Register',textAlign: TextAlign.center,style: TextStyle(
                fontSize: 20,color: Colors.white
            ),),
            color: Colors.red,

          ),
        ],
      ),
    );
    Widget data=Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          RaisedButton(
            hoverColor: Colors.redAccent,
            onPressed: (){},
            child: Text('Google',textAlign: TextAlign.center,style: TextStyle(
                fontSize: 20,color: Colors.white
            ),),
            color: Colors.red,

          ),
          RaisedButton(
            hoverColor: Colors.redAccent,
            onPressed: (){},
            child: Text('Facebook',textAlign: TextAlign.center,style: TextStyle(
                fontSize: 20,color: Colors.white
            ),),
            color: Colors.red,
          ),
        ],
      ),
    );
    return Scaffold(
       body:Center(
         child: Container(
           decoration: BoxDecoration(
               image:DecorationImage(
                   image: AssetImage('images/spscreen.jpg'),
                   fit: BoxFit.cover
               )
           ),
           child: ListView(
             shrinkWrap: true,
         children: <Widget>[user,email,Mobile,newdata,button,data],
           ),
         ) ,
       )
    );
  }
}

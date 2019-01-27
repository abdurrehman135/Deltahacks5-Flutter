import 'package:flutter/material.dart';
//import 'event.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to Flutter'),
        ),
        body: Center(
          child: LoginPage(),
        )
      )
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        LoginTextField("Email", 320),
        LoginTextField("Password", 320),
        //Padding(padding: EdgeInsets.all(30),),
        Padding(padding: EdgeInsets.only(left: 30, right: 30, bottom: 35),),
        ButtonTheme(
          minWidth: 320,
          height: 40,
          buttonColor: Color(0xFF192A56),
          child: RaisedButton(
            onPressed: () {},
            child: Text("Login"),
            textColor: Colors.white,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0),),
          ),
        )
      ],
    );
  }
}

class LoginTextField extends StatelessWidget {
  LoginTextField(this.text, this.length);

  final String text;
  final double length;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: length,
      child: Column(
        children: <Widget>[
          Container(child: Text(text), alignment: Alignment.centerLeft, margin: EdgeInsets.only(left: 10, top: 10),),
          Container(child: TextField(), margin: EdgeInsets.only(left: 10, right: 10, bottom: 5,),),
        ],
      ),
    );
  }
}
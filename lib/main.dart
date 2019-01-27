import 'package:flutter/material.dart';

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
        Padding(padding: EdgeInsets.all(30),),
        RaisedButton(onPressed: (){}, child: Text("login"),)
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
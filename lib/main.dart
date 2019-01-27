import 'package:flutter/material.dart';
import 'event.dart';

void main() => runApp(EventPage());

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
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        LoginTextField("Email"),
        LoginTextField("Password"),
        Padding(padding: EdgeInsets.all(70),),
        RaisedButton(onPressed: (){}, child: Text("login"),)
      ],
    );
  }
}

class LoginTextField extends StatelessWidget {
  LoginTextField(this.text);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(text),
        Container(child: TextField(), width: 100,),
      ],
    );
  }
}
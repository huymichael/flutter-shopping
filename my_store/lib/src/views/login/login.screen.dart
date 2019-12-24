import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  FlatButton(
                    onPressed: () {},
                    child: Text('Sign in'),
                    color: Colors.pink,
                  ),
                  FlatButton(
                    onPressed: () {},
                    child: Text('Sign Up'),
                  ),
                ],
              ),
              ListTile(
                title: Text('Welcome to Michael Tea'),
                subtitle: Text('Lets get started'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

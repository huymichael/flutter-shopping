import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_store/src/routes/routes_path.dart';
import 'package:my_store/src/shared/widgets/card_with_overlay_button.widget.dart';
import 'package:my_store/src/shared/widgets/rounded_text_field.widget.dart';
import 'package:my_store/src/shared/widgets/spacing.widget.dart';
import 'package:my_store/src/utils/app_theme.utils.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0),
      body: Container(
        child: SafeArea(
          child: Stack(
            children: <Widget>[
              _buildBackground(),
              _buildLoginSection(),
              BackButton(
                color: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBackground() {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/tea-4.jpg'),
            colorFilter: ColorFilter.mode(
                Colors.black26.withOpacity(0.5), BlendMode.darken),
            fit: BoxFit.cover),
      ),
    );
  }

  Widget _buildLoginSection() {
    return CardWithOverlayButton(
      widget: _buildLoginForm(),
      onPressButton: () {
        print('login to app');
      },
      buttonLabel: 'Login',
    );
  }

  Widget _buildLoginForm() {
    return Column(
      children: <Widget>[
        Text(
          'Login',
          style: TextStyle(fontFamily: 'Roboto Bold', fontSize: 30.0),
        ),
        Spacing(
          vertical: 20.0,
        ),
        RoundedTextField(
          fieldController: null,
          prefixIcon: Icon(Icons.person_outline),
          textInputType: TextInputType.emailAddress,
          placeHolder: 'Username',
        ),
        Spacing(
          vertical: 25.0,
        ),
        RoundedTextField(
          isObscureText: true,
          fieldController: null,
          prefixIcon: Icon(Icons.lock_outline),
          placeHolder: 'Password',
        ),
        Column(
          children: <Widget>[
            Container(
              alignment: Alignment.centerRight,
              child: FlatButton(
                padding: EdgeInsets.all(0),
                onPressed: () {
                  print('forgot password');
                },
                child: Text(
                  'Forgot password?',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text(
                    'New user?',
                    style: TextStyle(color: Colors.grey),
                  ),
                  Spacing(
                    horizontal: 5.0,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, RoutingPath.registerRoute);
                    },
                    child: Text(
                      'Sign up',
                      style: TextStyle(color: AppTheme.sunsetOrangeColor),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}

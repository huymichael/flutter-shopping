import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_store/src/constants/image.constant.dart';
import 'package:my_store/src/routes/routes_path.dart';
import 'package:my_store/src/shared/widgets/card_center.widget.dart';
import 'package:my_store/src/shared/widgets/card_with_overlay_button.widget.dart';
import 'package:my_store/src/shared/widgets/round_button.widget.dart';
import 'package:my_store/src/shared/widgets/rounded_text_field.widget.dart';
import 'package:my_store/src/shared/widgets/spacing.widget.dart';
import 'package:my_store/src/shared/widgets/theme_background.widget.dart';
import 'package:my_store/src/utils/app_theme.utils.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ThemeBackgroundImage(
        imageUrl: ImageConstant.START_SCREEN_BACKGROUND,
        widget: _buildLogin(),
      ),
    );
  }

  Widget _buildLogin() {
    return Container(
      child: SafeArea(
        child: Stack(
          children: <Widget>[
            BackButton(
              color: Colors.white,
            ),
            CenterCard(
              contentPadding:
                  EdgeInsets.symmetric(vertical: 20.0, horizontal: 30.0),
              cardContent: Column(
                children: <Widget>[
                  Text(
                    'Login',
                    textAlign: TextAlign.center,
                    style:
                        TextStyle(fontFamily: 'OpenSans Bold', fontSize: 30.0),
                  ),
                  Spacing(vertical: 50,),
                  RoundedTextField(),
                  Spacing(vertical: 50,),
                  RoundedButton(
                    onPress: () {},
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildLoginSection() {
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.1),
      child: Column(
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderSide: BorderSide(
                    width: 5,
                    color: Colors.lightGreenAccent,
                    style: BorderStyle.none),
              ),
            ),
          ),
          Spacing(
            vertical: 10.0,
          ),
          TextFormField(),
        ],
      ),
    );
  }

  Widget _buildLoginSection2() {
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

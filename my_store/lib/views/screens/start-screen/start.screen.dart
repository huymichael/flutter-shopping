import 'package:flutter/material.dart';
import 'package:my_store/constants/image.constant.dart';
import 'package:my_store/constants/styling.constant.dart';
import 'package:my_store/shared/widgets/round-button.widget.dart';
import 'package:my_store/shared/widgets/spacing.widget.dart';
import 'package:my_store/views/login/login.screen.dart';

class StartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(bottom: 60.0),
                  child: Image.asset(ImageConstant.START_SCREEN_LOGO),
                ),
                Text(
                  'Welcome!',
                  textAlign: TextAlign.center,
                  style: StylingConstant.kStartScreenHeader,
                ),
                RoundedButton(
                  buttonLabel: 'Sign in',
                  onPress: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginScreen()));
                  },
                ),
                RoundedButton(
                  buttonLabel: 'Sign Up',
                  onPress: () {},
                  isOutlineButton: true,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

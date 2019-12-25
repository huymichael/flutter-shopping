import 'package:flutter/material.dart';
import 'package:my_store/src/constants/image.constant.dart';
import 'package:my_store/src/constants/styling.constant.dart';
import 'package:my_store/src/routes/routes-path.dart';
import 'package:my_store/src/shared/widgets/round-button.widget.dart';

class StartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
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
                  Navigator.pushNamed(context, RoutingPath.loginRoute);
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
    );
  }
}

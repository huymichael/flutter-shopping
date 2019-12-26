import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_store/src/constants/image.constant.dart';
import 'package:my_store/src/routes/routes-path.dart';
import 'package:my_store/src/shared/widgets/round-button.widget.dart';
import 'package:my_store/src/shared/widgets/spacing.widget.dart';
import 'package:my_store/src/utils/app-theme.utils.dart';

class StartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            _buildBackground(),
            _buildContext(context),
          ],
        ),
      ),
    );
  }

  Widget _buildBackground() {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(ImageConstant.START_SCREEN_BACKGROUND),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(Colors.black26, BlendMode.darken),
        ),
      ),
    );
  }

  Widget _buildContext(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Container(
            margin: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.1),
            child: Text(
              'Tea…\n is a religion of the art of life.',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30.0,
                  fontStyle: FontStyle.italic,
                  fontFamily: 'Roboto Bold'),
            ),
          ),
          Spacing(
            vertical: 150.0,
          ),
          Container(
            margin: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.05),
            height: MediaQuery.of(context).size.height * 0.3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                RoundedButton(
                  buttonLabel: 'Sign in',
                  onPress: () {
                    Navigator.pushNamed(context, RoutingPath.loginRoute);
                  },
                ),
                RoundedButton(
                  buttonLabel: 'Sign up',
                  fillColor: Colors.white,
                  textColor: AppTheme.sunsetOrangeColor,
                  buttonBorder: BorderSide(
                    color: AppTheme.sunsetOrangeColor,
                    style: BorderStyle.solid,
                  ),
                  onPress: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_store/src/constants/image.constant.dart';
import 'package:my_store/src/constants/styling.constant.dart';
import 'package:my_store/src/routes/routes_path.dart';
import 'package:my_store/src/shared/widgets/round_button.widget.dart';
import 'package:my_store/src/shared/widgets/spacing.widget.dart';
import 'package:my_store/src/shared/widgets/theme_background.widget.dart';
import 'package:my_store/src/utils/app_theme.utils.dart';

class StartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ThemeBackgroundImage(
        widget: _buildStartScreen(context),
        imageUrl: ImageConstant.START_SCREEN_BACKGROUND,
      ),
    );
  }

  Widget _buildStartScreen(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            AppTheme.raffiaColor.withOpacity(0.4),
            AppTheme.sandColor.withOpacity(0.2),
          ],
        ),
      ),
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Container(
              margin: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.1),
              child: Text(
                'Tea…\n is a religion of the art of life.',
                style: StylingConstant.kStartScreenSlogan,
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
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  RoundedButton(
                    buttonLabel: 'Sign In',
                    onPress: () {
                      Navigator.pushNamed(context, RoutingPath.loginRoute);
                    },
                  ),
                  Spacing(
                    vertical: 15.0,
                  ),
                  RoundedButton(
                    buttonLabel: 'Sign Up',
                    fillColor: Colors.white,
                    textColor: AppTheme.sunsetOrangeColor,
                    buttonBorder: BorderSide(
                      color: AppTheme.sunsetOrangeColor,
                      style: BorderStyle.solid,
                    ),
                    onPress: () {
                      Navigator.pushNamed(context, RoutingPath.registerRoute);
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_store/src/constants/auth.constant.dart';
import 'package:my_store/src/constants/image.constant.dart';
import 'package:my_store/src/constants/styling.constant.dart';
import 'package:my_store/src/routes/route_paths.dart';
import 'package:my_store/src/routes/routes.dart';
import 'package:my_store/src/services/base_authentication.dart';
import 'package:my_store/src/shared/widgets/round_button.widget.dart';
import 'package:my_store/src/shared/widgets/spacing.widget.dart';
import 'package:my_store/src/shared/widgets/theme_background.widget.dart';
import 'package:my_store/src/utils/app_theme.util.dart';
import 'package:my_store/src/views/screens/category/category.screen.dart';

class StartScreen extends StatefulWidget {
  final BaseAuthentication auth;

  StartScreen({this.auth});

  @override
  _StartScreenState createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  String _userId = '';
  AuthStatus authStatus = AuthStatus.NOT_DETERMINED;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    widget.auth.getCurrentUser().then((user) {
      setState(() {
        if (user != null) {
          _userId = user?.uid;
        }
        authStatus =
            user?.uid == null ? AuthStatus.NOT_LOGGED_IN : AuthStatus.LOGGED_IN;
      });
    });
  }

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
    switch (authStatus) {
      case AuthStatus.NOT_DETERMINED:
        return _showStartScreen();
        break;
      case AuthStatus.NOT_LOGGED_IN:
        return _showStartScreen();
        break;
      case AuthStatus.LOGGED_IN:
        return CategoryScreen();
        break;
      default:
        return _showStartScreen();
    }
  }

  Widget _showStartScreen() {
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
                      AppRoutes.navigateTo(context, RoutingPath.loginRoute);
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
                      AppRoutes.navigateTo(context, RoutingPath.registerRoute,);
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

  void loginCallback() {
    widget.auth.getCurrentUser().then((user) {
      setState(() {
        _userId = user.uid.toString();
      });
    });
    setState(() {
      authStatus = AuthStatus.LOGGED_IN;
    });
  }

  void logoutCallback() {
    setState(() {
      authStatus = AuthStatus.NOT_LOGGED_IN;
      _userId = "";
    });
  }
}

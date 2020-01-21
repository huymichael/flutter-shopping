import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:my_store/src/constants/image.constant.dart';
import 'package:my_store/src/constants/styling.constant.dart';
import 'package:my_store/src/routes/route_paths.dart';
import 'package:my_store/src/routes/routes.dart';
import 'package:my_store/src/shared/widgets/break_line.widget.dart';
import 'package:my_store/src/shared/widgets/card_center.widget.dart';
import 'package:my_store/src/shared/widgets/round_button.widget.dart';
import 'package:my_store/src/shared/widgets/spacing.widget.dart';
import 'package:my_store/src/shared/widgets/theme_background.widget.dart';
import 'package:my_store/src/utils/app_theme.util.dart';
import 'package:my_store/src/utils/form.util.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool hidePassword = true;
  final _formKey = FormUtils().createFormKey;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ThemeBackgroundImage(
        imageUrl: ImageConstant.LOGIN_SCREEN_BACKGROUND,
        colorFilter:
            ColorFilter.mode(Colors.black.withOpacity(0.4), BlendMode.darken),
        widget: _buildLoginScreen(),
      ),
    );
  }

  Widget _buildLoginScreen() {
    return Container(
      child: SafeArea(
        child: Stack(
          children: <Widget>[
            BackButton(
              color: Colors.white,
              onPressed: () {
                AppRoutes.navigateTo(context, RoutingPath.rootRoute);
              },
            ),
            CenterCard(
              contentPadding:
                  EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
              cardContent: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Text(
                    'Login',
                    textAlign: TextAlign.center,
                    style:
                        TextStyle(fontFamily: 'OpenSans Bold', fontSize: 25.0),
                  ),
                  Spacing(
                    vertical: 20,
                  ),
                  _buildLoginForm(),
                  _buildActionSection(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildLoginForm() {
    return FormBuilder(
      key: _formKey,
      child: Column(
        children: <Widget>[
          FormBuilderTextField(
            attribute: "username",
            keyboardType: TextInputType.emailAddress,
            maxLines: 1,
            decoration: InputDecoration(
              hintText: 'Email',
              isDense: true,
              prefixIcon: Icon(Icons.mail_outline),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
            ),
            validators: [
              FormBuilderValidators.required(
                  errorText: 'Please enter an email address')
            ],
          ),
          Spacing(
            vertical: 20.0,
          ),
          FormBuilderTextField(
            attribute: "password",
            obscureText: hidePassword,
            maxLines: 1,
            decoration: InputDecoration(
              hintText: 'Password',
              prefixIcon: Icon(Icons.lock_outline),
              suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    hidePassword = !hidePassword;
                  });
                },
                icon: hidePassword
                    ? Image.asset(
                        ImageConstant.EYE_OUTLINE_ICON,
                        color: AppTheme.sunsetOrangeColor,
                        width: 24.0,
                        height: 24.0,
                      )
                    : Icon(Icons.remove_red_eye),
              ),
              isDense: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
            ),
            validators: [
              FormBuilderValidators.required(
                  errorText: 'Please enter your password'),
              FormBuilderValidators.minLength(6,
                  errorText: 'Password should be at least 6 characters long')
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildActionSection() {
    return Container(
      margin: EdgeInsets.only(top: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          RoundedButton(
            onPress: () {
              AppRoutes.navigateTo(context, RoutingPath.category);

//              if (_formKey.currentState.saveAndValidate()) {
//                print(_formKey.currentState.value);
//                Navigator.pushNamed(context, RoutingPath.category);
//              }
            },
            buttonLabel: 'Log in',
          ),
          Spacing(
            vertical: 20.0,
          ),
          LineBreak(),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              InkWell(
                onTap: () {
                  print('move to forgot password screen. NOT IMPLEMENT YET');
                },
                child:
                    Text('Can\'t log in?', style: StylingConstant.kAnchorText),
              ),
              Container(
                margin: EdgeInsets.only(left: 8.0, right: 8.0),
                alignment: Alignment.center,
                child: Icon(
                  Icons.brightness_1,
                  color: Colors.grey,
                  size: 5.0,
                ),
              ),
              InkWell(
                onTap: () {
                  AppRoutes.navigateTo(context, RoutingPath.registerRoute);
                },
                child: Text(
                  'Sign up for an account',
                  style: StylingConstant.kAnchorText,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

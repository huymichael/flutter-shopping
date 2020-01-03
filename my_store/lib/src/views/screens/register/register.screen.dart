import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:my_store/src/routes/routes_path.dart';
import 'package:my_store/src/shared/widgets/card_with_overlay_button.widget.dart';
import 'package:my_store/src/shared/widgets/rounded_text_field.widget.dart';
import 'package:my_store/src/shared/widgets/spacing.widget.dart';
import 'package:my_store/src/utils/app_theme.utils.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final GlobalKey<FormBuilderState> _fbKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0),
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            _buildBackground(),
            _buildRegisterSection(),
          ],
        ),
      ),
    );
  }

  Widget _buildBackground() {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/tea-10.jpg'),
            colorFilter: ColorFilter.mode(
                Colors.black26.withOpacity(0.5), BlendMode.darken),
            fit: BoxFit.cover),
      ),
    );
  }

  Widget _buildRegisterSection() {
    return CardWithOverlayButton(
      widget: _registerSection(),
      onPressButton: () {
        if (_fbKey.currentState.saveAndValidate()) {
          print(_fbKey.currentState.value);
        }
      },
      buttonLabel: 'Create',
    );
  }

  Widget _registerSection() {
    return Column(
      children: <Widget>[
        Text(
          'Create Account',
          style: TextStyle(fontFamily: 'Roboto Bold', fontSize: 30.0),
        ),
        Spacing(
          vertical: 20.0,
        ),
        Column(
          children: <Widget>[
            RoundedTextField(
              fieldController: null,
              placeHolder: 'Username',
            ),
            Spacing(
              vertical: 25.0,
            ),
            RoundedTextField(
              fieldController: null,
              placeHolder: 'Email Address',
            ),
            Spacing(
              vertical: 25.0,
            ),
            RoundedTextField(
              fieldController: null,
              placeHolder: 'Password',
              isObscureText: true,
            ),
            Spacing(
              vertical: 25.0,
            ),
            RoundedTextField(
              fieldController: null,
              placeHolder: 'Confirm password',
              isObscureText: true,
            ),
          ],
        ),
        Spacing(
          vertical: 15.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Text(
              'Already have an account?',
              style: TextStyle(color: Colors.grey),
            ),
            Spacing(
              horizontal: 5.0,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, RoutingPath.loginRoute);
              },
              child: Text(
                'Sign in',
                style: TextStyle(color: AppTheme.sunsetOrangeColor),
              ),
            )
          ],
        ),
      ],
    );
  }
}

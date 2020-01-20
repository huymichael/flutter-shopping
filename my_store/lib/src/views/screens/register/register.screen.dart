import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:my_store/src/constants/image.constant.dart';
import 'package:my_store/src/constants/styling.constant.dart';
import 'package:my_store/src/routes/routes_path.dart';
import 'package:my_store/src/shared/widgets/break_line.widget.dart';
import 'package:my_store/src/shared/widgets/card_center.widget.dart';
import 'package:my_store/src/shared/widgets/round_button.widget.dart';
import 'package:my_store/src/shared/widgets/spacing.widget.dart';
import 'package:my_store/src/shared/widgets/theme_background.widget.dart';
import 'package:my_store/src/utils/form.util.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _formKey = FormUtils().createFormKey;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ThemeBackgroundImage(
        imageUrl: ImageConstant.REGISTER_SCREEN_BACKGROUND,
        colorFilter:
            ColorFilter.mode(Colors.black.withOpacity(0.5), BlendMode.darken),
        widget: _buildRegisterScreen(),
      ),
    );
  }

  Widget _buildRegisterScreen() {
    return Container(
      child: SafeArea(
        child: Stack(
          children: <Widget>[
            BackButton(
              color: Colors.white,
              onPressed: () {
                Navigator.pushNamed(context, RoutingPath.rootRoute);
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
                    'Create your account',
                    textAlign: TextAlign.center,
                    style:
                        TextStyle(fontFamily: 'OpenSans Bold', fontSize: 25.0),
                  ),
                  Spacing(
                    vertical: 20,
                  ),
                  _buildRegisterForm(),
                  _buildActionSection(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRegisterForm() {
    return FormBuilder(
      key: _formKey,
      child: Column(
        children: <Widget>[
          FormBuilderTextField(
            attribute: 'email',
            maxLines: 1,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.mail_outline),
              isDense: true,
              hintText: 'Email',
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
            attribute: 'fullName',
            maxLines: 1,
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.person),
              isDense: true,
              hintText: 'Full name',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
            ),
            validators: [
              FormBuilderValidators.required(
                  errorText: 'Please enter your name')
            ],
          ),
          Spacing(
            vertical: 20.0,
          ),
          FormBuilderTextField(
            attribute: 'password',
            maxLines: 1,
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.lock_outline),
              isDense: true,
              hintText: 'Password',
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
              if (_formKey.currentState.saveAndValidate()) {
                print(_formKey.currentState.value);
              }
            },
            buttonLabel: 'Sign up',
          ),
          Spacing(
            vertical: 20.0,
          ),
          LineBreak(),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, RoutingPath.loginRoute);
            },
            child: Text(
              'Sign in instead',
              textAlign: TextAlign.center,
              style: StylingConstant.kAnchorText,
            ),
          ),
        ],
      ),
    );
  }
}

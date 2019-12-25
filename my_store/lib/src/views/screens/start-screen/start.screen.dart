import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/tea-7.jpg'),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(Colors.black26, BlendMode.darken),

                ),
              ),
            ),
//            Container(
//              color: Color.fromRGBO(0, 0, 0, 0.4),
//            ),
          ],
        ),
      ),
    );

//    return Scaffold(
//      resizeToAvoidBottomInset: false,
//      body: Container(
//        child: Padding(
//          padding: const EdgeInsets.all(30.0),
//          child: Column(
//            crossAxisAlignment: CrossAxisAlignment.stretch,
//            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//            children: <Widget>[
//              Container(
//                margin: EdgeInsets.only(bottom: 60.0),
//                child: Image.asset(ImageConstant.START_SCREEN_LOGO),
//              ),
//              Text(
//                'Welcome!',
//                textAlign: TextAlign.center,
//                style: StylingConstant.kStartScreenHeader,
//              ),
//              RoundedButton(
//                buttonLabel: 'Sign in',
//                onPress: () {
//                  Navigator.pushNamed(context, RoutingPath.loginRoute);
//                },
//              ),
//              RoundedButton(
//                buttonLabel: 'Sign Up',
//                onPress: () {},
//                isOutlineButton: true,
//              ),
//            ],
//          ),
//        ),
//      ),
//    );
  }
}

import 'package:flutter/material.dart';
import 'package:my_store/src/constants/image.constant.dart';
import 'package:my_store/src/shared/widgets/round-button.widget.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/tea-4.jpg'),
                  colorFilter: ColorFilter.mode(
                      Colors.black26.withOpacity(0.5), BlendMode.darken),
                  fit: BoxFit.cover),
            ),
          ),
          Container(
            width: 100,
            height: 8,
            decoration:
                ShapeDecoration(shape: CircleBorder(), color: Colors.white),
            child: Padding(
              padding: EdgeInsets.all(8),
              child: DecoratedBox(
                decoration: ShapeDecoration(
                    shape: CircleBorder(),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                          'https://upload.wikimedia.org/wikipedia/commons/a/a0/Bill_Gates_2018.jpg',
                        ))),
              ),
            ),
          )
        ],
      ),
    );
  }
}

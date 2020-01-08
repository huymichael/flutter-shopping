import 'package:flutter/material.dart';
import 'package:my_store/src/constants/image.constant.dart';
import 'package:my_store/src/constants/styling.constant.dart';

class CategoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppbar(),
      body: Container(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                alignment: Alignment.center,
                height: 150,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      colorFilter: ColorFilter.mode(
                          Colors.black54.withOpacity(0.5), BlendMode.hardLight),
                      fit: BoxFit.cover,
                      image:
                          AssetImage(ImageConstant.REGISTER_SCREEN_BACKGROUND)),
                ),
                child: Text(
                  'dasdasd',
                  style: TextStyle(color: Colors.white),
                ),
              )
//              GestureDetector(
//                child: Container(
//                  height: 200,
//                  color: Colors.red,
//                ),
//              ),
//              GestureDetector(
//                child: Container(
//                  height: 200,
//                  color: Colors.lightGreen,
//                ),
//              ),
//              GestureDetector(
//                child: Container(
//                  height: 200,
//                  color: Colors.red,
//                ),
//              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAppbar() {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Colors.white,
      title: Text(
        'Shop by category',
        style: StylingConstant.kAppbarTitle,
      ),
      centerTitle: true,
    );
  }
}

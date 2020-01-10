import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_store/src/constants/styling.constant.dart';

class TeasFeaturedCategoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppbar(),
      body: Container(
        height: double.maxFinite,
        child: SingleChildScrollView(
          child: SafeArea(
            child: _buildTeasCategories(),
          ),
        ),
      ),
    );
  }

  Widget _buildTeasCategories() {
    return Container(
      child: Wrap(
        direction: Axis.horizontal,
        spacing: 1,
        alignment: WrapAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            height: 180,
            width: 100,
            color: Colors.cyan,
          ),
          Container(
            height: 180,
            width: 180,
            color: Colors.redAccent,
          ),
          Container(
            height: 180,
            width: 180,
            color: Colors.lightGreenAccent,
          ),
          Container(
            height: 180,
            width: 180,
            color: Colors.lightBlueAccent,
          ),
          Container(
            height: 180,
            width: 180,
            color: Colors.amberAccent,
          ),
          Container(
            height: 180,
            width: 180,
            color: Colors.red,
          ),
        ],
      ),
    );
  }

  Widget _buildAppbar() {
    return AppBar(
      centerTitle: true,
      title: Text(
        'Tea',
        style: StylingConstant.kAppbarTitle,
      ),
      backgroundColor: Colors.white,
    );
  }
}

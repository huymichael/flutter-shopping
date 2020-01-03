import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_store/src/shared/widgets/round_button.widget.dart';
import 'package:my_store/src/shared/widgets/spacing.widget.dart';

class CardWithOverlayButton extends StatelessWidget {
  final Widget widget;
  final Color cardColor;
  final String buttonLabel;
  final Color buttonColor;
  final Color buttonTextColor;
  final Function onPressButton;
  CardWithOverlayButton(
      {@required this.widget,
      this.cardColor,
      this.buttonLabel,
      this.buttonColor,
      this.buttonTextColor,
      this.onPressButton});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: SingleChildScrollView(
        child: Stack(
          overflow: Overflow.visible,
          alignment: Alignment.center,
          children: <Widget>[
            Card(
              margin: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.05),
              elevation: 2.0,
              color: cardColor ?? Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0)),
              child: Container(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    widget,
                    Spacing(
                      vertical: 30.0,
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              width: 200.0,
              bottom: -20.0,
              child: RoundedButton(
                onPress: onPressButton,
                buttonLabel: buttonLabel,
                fillColor: buttonColor,
                textColor: buttonTextColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

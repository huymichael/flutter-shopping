import 'package:flutter/material.dart';
import 'package:my_store/src/utils/app_theme.util.dart';

class RoundedTextField extends StatelessWidget {
  final Widget prefixIcon;
  final String placeHolder;
  final int maxLength;
  final Widget suffixIcon;
  final bool isObscureText;
  final Function validator;
  final TextInputType textInputType;
  final TextEditingController fieldController;

  RoundedTextField(
      {@required this.fieldController,
      this.textInputType,
      this.prefixIcon,
      this.suffixIcon,
      this.placeHolder,
      this.isObscureText,
      this.validator,
      this.maxLength});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isObscureText ?? false,
      controller: fieldController,
      maxLength: maxLength,
      keyboardType: textInputType,
      validator: validator,
      decoration: InputDecoration(
        hintText: placeHolder,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppTheme.sunsetOrangeColor, width: 1.0),
          borderRadius: BorderRadius.circular(30.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppTheme.sunsetOrangeColor, width: 2.0),
          borderRadius: BorderRadius.circular(30.0),
        ),
      ),
    );
  }
}

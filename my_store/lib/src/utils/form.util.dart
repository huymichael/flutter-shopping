import 'package:flutter/cupertino.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class FormUtils {
  final GlobalKey<FormBuilderState> _formKey = GlobalKey<FormBuilderState>();
  GlobalKey<FormBuilderState> get createFormKey {
    return _formKey;
  }
}

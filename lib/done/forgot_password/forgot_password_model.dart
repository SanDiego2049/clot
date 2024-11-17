import '/flutter_flow/flutter_flow_util.dart';
import 'forgot_password_widget.dart' show ForgotPasswordWidget;
import 'package:flutter/material.dart';

class ForgotPasswordModel extends FlutterFlowModel<ForgotPasswordWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for forgotEmail widget.
  FocusNode? forgotEmailFocusNode1;
  TextEditingController? forgotEmailTextController1;
  String? Function(BuildContext, String?)? forgotEmailTextController1Validator;
  // State field(s) for forgotEmail widget.
  FocusNode? forgotEmailFocusNode2;
  TextEditingController? forgotEmailTextController2;
  String? Function(BuildContext, String?)? forgotEmailTextController2Validator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    forgotEmailFocusNode1?.dispose();
    forgotEmailTextController1?.dispose();

    forgotEmailFocusNode2?.dispose();
    forgotEmailTextController2?.dispose();
  }
}

import '/flutter_flow/flutter_flow_util.dart';
import 'sign_in_widget.dart' show SignInWidget;
import 'package:flutter/material.dart';

class SignInModel extends FlutterFlowModel<SignInWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for emailSignIn widget.
  FocusNode? emailSignInFocusNode1;
  TextEditingController? emailSignInTextController1;
  String? Function(BuildContext, String?)? emailSignInTextController1Validator;
  // State field(s) for emailSignIn widget.
  FocusNode? emailSignInFocusNode2;
  TextEditingController? emailSignInTextController2;
  String? Function(BuildContext, String?)? emailSignInTextController2Validator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    emailSignInFocusNode1?.dispose();
    emailSignInTextController1?.dispose();

    emailSignInFocusNode2?.dispose();
    emailSignInTextController2?.dispose();
  }
}

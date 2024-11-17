import '/flutter_flow/flutter_flow_util.dart';
import 'sign_in_continued_widget.dart' show SignInContinuedWidget;
import 'package:flutter/material.dart';

class SignInContinuedModel extends FlutterFlowModel<SignInContinuedWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for passwordSignIn widget.
  FocusNode? passwordSignInFocusNode1;
  TextEditingController? passwordSignInTextController1;
  late bool passwordSignInVisibility1;
  String? Function(BuildContext, String?)?
      passwordSignInTextController1Validator;
  // State field(s) for passwordSignIn widget.
  FocusNode? passwordSignInFocusNode2;
  TextEditingController? passwordSignInTextController2;
  late bool passwordSignInVisibility2;
  String? Function(BuildContext, String?)?
      passwordSignInTextController2Validator;

  @override
  void initState(BuildContext context) {
    passwordSignInVisibility1 = false;
    passwordSignInVisibility2 = false;
  }

  @override
  void dispose() {
    passwordSignInFocusNode1?.dispose();
    passwordSignInTextController1?.dispose();

    passwordSignInFocusNode2?.dispose();
    passwordSignInTextController2?.dispose();
  }
}

import '/flutter_flow/flutter_flow_util.dart';
import 'create_account_widget.dart' show CreateAccountWidget;
import 'package:flutter/material.dart';

class CreateAccountModel extends FlutterFlowModel<CreateAccountWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for firstName widget.
  FocusNode? firstNameFocusNode1;
  TextEditingController? firstNameTextController1;
  String? Function(BuildContext, String?)? firstNameTextController1Validator;
  // State field(s) for lastName widget.
  FocusNode? lastNameFocusNode1;
  TextEditingController? lastNameTextController1;
  String? Function(BuildContext, String?)? lastNameTextController1Validator;
  // State field(s) for emailCreate widget.
  FocusNode? emailCreateFocusNode1;
  TextEditingController? emailCreateTextController1;
  String? Function(BuildContext, String?)? emailCreateTextController1Validator;
  // State field(s) for passwordCreate widget.
  FocusNode? passwordCreateFocusNode1;
  TextEditingController? passwordCreateTextController1;
  late bool passwordCreateVisibility1;
  String? Function(BuildContext, String?)?
      passwordCreateTextController1Validator;
  // State field(s) for firstName widget.
  FocusNode? firstNameFocusNode2;
  TextEditingController? firstNameTextController2;
  String? Function(BuildContext, String?)? firstNameTextController2Validator;
  // State field(s) for lastName widget.
  FocusNode? lastNameFocusNode2;
  TextEditingController? lastNameTextController2;
  String? Function(BuildContext, String?)? lastNameTextController2Validator;
  // State field(s) for emailCreate widget.
  FocusNode? emailCreateFocusNode2;
  TextEditingController? emailCreateTextController2;
  String? Function(BuildContext, String?)? emailCreateTextController2Validator;
  // State field(s) for passwordCreate widget.
  FocusNode? passwordCreateFocusNode2;
  TextEditingController? passwordCreateTextController2;
  late bool passwordCreateVisibility2;
  String? Function(BuildContext, String?)?
      passwordCreateTextController2Validator;

  @override
  void initState(BuildContext context) {
    passwordCreateVisibility1 = false;
    passwordCreateVisibility2 = false;
  }

  @override
  void dispose() {
    firstNameFocusNode1?.dispose();
    firstNameTextController1?.dispose();

    lastNameFocusNode1?.dispose();
    lastNameTextController1?.dispose();

    emailCreateFocusNode1?.dispose();
    emailCreateTextController1?.dispose();

    passwordCreateFocusNode1?.dispose();
    passwordCreateTextController1?.dispose();

    firstNameFocusNode2?.dispose();
    firstNameTextController2?.dispose();

    lastNameFocusNode2?.dispose();
    lastNameTextController2?.dispose();

    emailCreateFocusNode2?.dispose();
    emailCreateTextController2?.dispose();

    passwordCreateFocusNode2?.dispose();
    passwordCreateTextController2?.dispose();
  }
}

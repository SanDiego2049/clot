import '/flutter_flow/flutter_flow_util.dart';
import 'add_address_widget.dart' show AddAddressWidget;
import 'package:flutter/material.dart';

class AddAddressModel extends FlutterFlowModel<AddAddressWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for addres widget.
  FocusNode? addresFocusNode1;
  TextEditingController? addresTextController1;
  String? Function(BuildContext, String?)? addresTextController1Validator;
  // State field(s) for city widget.
  FocusNode? cityFocusNode1;
  TextEditingController? cityTextController1;
  String? Function(BuildContext, String?)? cityTextController1Validator;
  // State field(s) for state widget.
  FocusNode? stateFocusNode1;
  TextEditingController? stateTextController1;
  String? Function(BuildContext, String?)? stateTextController1Validator;
  // State field(s) for zipcode widget.
  FocusNode? zipcodeFocusNode1;
  TextEditingController? zipcodeTextController1;
  String? Function(BuildContext, String?)? zipcodeTextController1Validator;
  // State field(s) for addres widget.
  FocusNode? addresFocusNode2;
  TextEditingController? addresTextController2;
  String? Function(BuildContext, String?)? addresTextController2Validator;
  // State field(s) for city widget.
  FocusNode? cityFocusNode2;
  TextEditingController? cityTextController2;
  String? Function(BuildContext, String?)? cityTextController2Validator;
  // State field(s) for state widget.
  FocusNode? stateFocusNode2;
  TextEditingController? stateTextController2;
  String? Function(BuildContext, String?)? stateTextController2Validator;
  // State field(s) for zipcode widget.
  FocusNode? zipcodeFocusNode2;
  TextEditingController? zipcodeTextController2;
  String? Function(BuildContext, String?)? zipcodeTextController2Validator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    addresFocusNode1?.dispose();
    addresTextController1?.dispose();

    cityFocusNode1?.dispose();
    cityTextController1?.dispose();

    stateFocusNode1?.dispose();
    stateTextController1?.dispose();

    zipcodeFocusNode1?.dispose();
    zipcodeTextController1?.dispose();

    addresFocusNode2?.dispose();
    addresTextController2?.dispose();

    cityFocusNode2?.dispose();
    cityTextController2?.dispose();

    stateFocusNode2?.dispose();
    stateTextController2?.dispose();

    zipcodeFocusNode2?.dispose();
    zipcodeTextController2?.dispose();
  }
}

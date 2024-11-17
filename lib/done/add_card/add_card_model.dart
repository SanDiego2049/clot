import '/flutter_flow/flutter_flow_util.dart';
import 'add_card_widget.dart' show AddCardWidget;
import 'package:flutter/material.dart';

class AddCardModel extends FlutterFlowModel<AddCardWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for card_number widget.
  FocusNode? cardNumberFocusNode1;
  TextEditingController? cardNumberTextController1;
  String? Function(BuildContext, String?)? cardNumberTextController1Validator;
  // State field(s) for cvv widget.
  FocusNode? cvvFocusNode1;
  TextEditingController? cvvTextController1;
  late bool cvvVisibility1;
  String? Function(BuildContext, String?)? cvvTextController1Validator;
  // State field(s) for exp widget.
  FocusNode? expFocusNode1;
  TextEditingController? expTextController1;
  String? Function(BuildContext, String?)? expTextController1Validator;
  DateTime? datePicked1;
  // State field(s) for cardholder_name widget.
  FocusNode? cardholderNameFocusNode1;
  TextEditingController? cardholderNameTextController1;
  String? Function(BuildContext, String?)?
      cardholderNameTextController1Validator;
  // State field(s) for card_number widget.
  FocusNode? cardNumberFocusNode2;
  TextEditingController? cardNumberTextController2;
  String? Function(BuildContext, String?)? cardNumberTextController2Validator;
  // State field(s) for cvv widget.
  FocusNode? cvvFocusNode2;
  TextEditingController? cvvTextController2;
  late bool cvvVisibility2;
  String? Function(BuildContext, String?)? cvvTextController2Validator;
  // State field(s) for exp widget.
  FocusNode? expFocusNode2;
  TextEditingController? expTextController2;
  String? Function(BuildContext, String?)? expTextController2Validator;
  DateTime? datePicked2;
  // State field(s) for cardholder_name widget.
  FocusNode? cardholderNameFocusNode2;
  TextEditingController? cardholderNameTextController2;
  String? Function(BuildContext, String?)?
      cardholderNameTextController2Validator;

  @override
  void initState(BuildContext context) {
    cvvVisibility1 = false;
    cvvVisibility2 = false;
  }

  @override
  void dispose() {
    cardNumberFocusNode1?.dispose();
    cardNumberTextController1?.dispose();

    cvvFocusNode1?.dispose();
    cvvTextController1?.dispose();

    expFocusNode1?.dispose();
    expTextController1?.dispose();

    cardholderNameFocusNode1?.dispose();
    cardholderNameTextController1?.dispose();

    cardNumberFocusNode2?.dispose();
    cardNumberTextController2?.dispose();

    cvvFocusNode2?.dispose();
    cvvTextController2?.dispose();

    expFocusNode2?.dispose();
    expTextController2?.dispose();

    cardholderNameFocusNode2?.dispose();
    cardholderNameTextController2?.dispose();
  }
}

import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'personal_info_widget.dart' show PersonalInfoWidget;
import 'package:flutter/material.dart';

class PersonalInfoModel extends FlutterFlowModel<PersonalInfoWidget> {
  ///  Local state fields for this page.

  bool men = true;

  bool women = false;

  String? gender;

  ///  State fields for stateful widgets in this page.

  // State field(s) for ageRange widget.
  String? ageRangeValue1;
  FormFieldController<String>? ageRangeValueController1;
  // State field(s) for ageRange widget.
  String? ageRangeValue2;
  FormFieldController<String>? ageRangeValueController2;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}

import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'checkout_widget.dart' show CheckoutWidget;
import 'package:flutter/material.dart';

class CheckoutModel extends FlutterFlowModel<CheckoutWidget> {
  ///  Local state fields for this page.

  double? shippingcost = 15.0;

  double? tax = 6.0;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (Initialize Transaction)] action in Container widget.
  ApiCallResponse? paystackSuccessful;
  // Stores action output result for [Backend Call - API (Initialize Transaction)] action in Container widget.
  ApiCallResponse? paystackSuccessfully;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}

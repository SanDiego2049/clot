import '/flutter_flow/flutter_flow_util.dart';
import 'paystack_completed_widget.dart' show PaystackCompletedWidget;
import 'package:flutter/material.dart';

class PaystackCompletedModel extends FlutterFlowModel<PaystackCompletedWidget> {
  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}

  /// Action blocks.
  Future paid(BuildContext context) async {
    context.pushNamed(
      'orderSuccessful',
      extra: <String, dynamic>{
        kTransitionInfoKey: const TransitionInfo(
          hasTransition: true,
          transitionType: PageTransitionType.fade,
          duration: Duration(milliseconds: 0),
        ),
      },
    );
  }
}

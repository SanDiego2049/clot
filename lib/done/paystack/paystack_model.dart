import '/flutter_flow/flutter_flow_util.dart';
import 'paystack_widget.dart' show PaystackWidget;
import 'package:flutter/material.dart';

class PaystackModel extends FlutterFlowModel<PaystackWidget> {
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

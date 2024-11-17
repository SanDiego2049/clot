import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'shop_categories_with_search_widget.dart'
    show ShopCategoriesWithSearchWidget;
import 'package:flutter/material.dart';

class ShopCategoriesWithSearchModel
    extends FlutterFlowModel<ShopCategoriesWithSearchWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for search widget.
  FocusNode? searchFocusNode1;
  TextEditingController? searchTextController1;
  String? Function(BuildContext, String?)? searchTextController1Validator;
  List<InventoryRecord> simpleSearchResults1 = [];
  // State field(s) for search widget.
  FocusNode? searchFocusNode2;
  TextEditingController? searchTextController2;
  String? Function(BuildContext, String?)? searchTextController2Validator;
  List<InventoryRecord> simpleSearchResults2 = [];

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    searchFocusNode1?.dispose();
    searchTextController1?.dispose();

    searchFocusNode2?.dispose();
    searchTextController2?.dispose();
  }
}

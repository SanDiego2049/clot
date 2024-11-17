import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CartRecord extends FirestoreRecord {
  CartRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "product_image" field.
  String? _productImage;
  String get productImage => _productImage ?? '';
  bool hasProductImage() => _productImage != null;

  // "product_color" field.
  String? _productColor;
  String get productColor => _productColor ?? '';
  bool hasProductColor() => _productColor != null;

  // "product_size" field.
  String? _productSize;
  String get productSize => _productSize ?? '';
  bool hasProductSize() => _productSize != null;

  // "product_price" field.
  double? _productPrice;
  double get productPrice => _productPrice ?? 0.0;
  bool hasProductPrice() => _productPrice != null;

  // "product_name" field.
  String? _productName;
  String get productName => _productName ?? '';
  bool hasProductName() => _productName != null;

  // "sellers_ref" field.
  DocumentReference? _sellersRef;
  DocumentReference? get sellersRef => _sellersRef;
  bool hasSellersRef() => _sellersRef != null;

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  // "product_quanity" field.
  int? _productQuanity;
  int get productQuanity => _productQuanity ?? 0;
  bool hasProductQuanity() => _productQuanity != null;

  // "buyers_ref" field.
  DocumentReference? _buyersRef;
  DocumentReference? get buyersRef => _buyersRef;
  bool hasBuyersRef() => _buyersRef != null;

  void _initializeFields() {
    _productImage = snapshotData['product_image'] as String?;
    _productColor = snapshotData['product_color'] as String?;
    _productSize = snapshotData['product_size'] as String?;
    _productPrice = castToType<double>(snapshotData['product_price']);
    _productName = snapshotData['product_name'] as String?;
    _sellersRef = snapshotData['sellers_ref'] as DocumentReference?;
    _date = snapshotData['date'] as DateTime?;
    _productQuanity = castToType<int>(snapshotData['product_quanity']);
    _buyersRef = snapshotData['buyers_ref'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('cart');

  static Stream<CartRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CartRecord.fromSnapshot(s));

  static Future<CartRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CartRecord.fromSnapshot(s));

  static CartRecord fromSnapshot(DocumentSnapshot snapshot) => CartRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CartRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CartRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CartRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CartRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCartRecordData({
  String? productImage,
  String? productColor,
  String? productSize,
  double? productPrice,
  String? productName,
  DocumentReference? sellersRef,
  DateTime? date,
  int? productQuanity,
  DocumentReference? buyersRef,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'product_image': productImage,
      'product_color': productColor,
      'product_size': productSize,
      'product_price': productPrice,
      'product_name': productName,
      'sellers_ref': sellersRef,
      'date': date,
      'product_quanity': productQuanity,
      'buyers_ref': buyersRef,
    }.withoutNulls,
  );

  return firestoreData;
}

class CartRecordDocumentEquality implements Equality<CartRecord> {
  const CartRecordDocumentEquality();

  @override
  bool equals(CartRecord? e1, CartRecord? e2) {
    return e1?.productImage == e2?.productImage &&
        e1?.productColor == e2?.productColor &&
        e1?.productSize == e2?.productSize &&
        e1?.productPrice == e2?.productPrice &&
        e1?.productName == e2?.productName &&
        e1?.sellersRef == e2?.sellersRef &&
        e1?.date == e2?.date &&
        e1?.productQuanity == e2?.productQuanity &&
        e1?.buyersRef == e2?.buyersRef;
  }

  @override
  int hash(CartRecord? e) => const ListEquality().hash([
        e?.productImage,
        e?.productColor,
        e?.productSize,
        e?.productPrice,
        e?.productName,
        e?.sellersRef,
        e?.date,
        e?.productQuanity,
        e?.buyersRef
      ]);

  @override
  bool isValidKey(Object? o) => o is CartRecord;
}

import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class WishlistRecord extends FirestoreRecord {
  WishlistRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "product_name" field.
  String? _productName;
  String get productName => _productName ?? '';
  bool hasProductName() => _productName != null;

  // "prodct_price" field.
  double? _prodctPrice;
  double get prodctPrice => _prodctPrice ?? 0.0;
  bool hasProdctPrice() => _prodctPrice != null;

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "produc_image" field.
  String? _producImage;
  String get producImage => _producImage ?? '';
  bool hasProducImage() => _producImage != null;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  bool hasCategory() => _category != null;

  void _initializeFields() {
    _productName = snapshotData['product_name'] as String?;
    _prodctPrice = castToType<double>(snapshotData['prodct_price']);
    _user = snapshotData['user'] as DocumentReference?;
    _producImage = snapshotData['produc_image'] as String?;
    _category = snapshotData['category'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('wishlist');

  static Stream<WishlistRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => WishlistRecord.fromSnapshot(s));

  static Future<WishlistRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => WishlistRecord.fromSnapshot(s));

  static WishlistRecord fromSnapshot(DocumentSnapshot snapshot) =>
      WishlistRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static WishlistRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      WishlistRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'WishlistRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is WishlistRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createWishlistRecordData({
  String? productName,
  double? prodctPrice,
  DocumentReference? user,
  String? producImage,
  String? category,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'product_name': productName,
      'prodct_price': prodctPrice,
      'user': user,
      'produc_image': producImage,
      'category': category,
    }.withoutNulls,
  );

  return firestoreData;
}

class WishlistRecordDocumentEquality implements Equality<WishlistRecord> {
  const WishlistRecordDocumentEquality();

  @override
  bool equals(WishlistRecord? e1, WishlistRecord? e2) {
    return e1?.productName == e2?.productName &&
        e1?.prodctPrice == e2?.prodctPrice &&
        e1?.user == e2?.user &&
        e1?.producImage == e2?.producImage &&
        e1?.category == e2?.category;
  }

  @override
  int hash(WishlistRecord? e) => const ListEquality().hash(
      [e?.productName, e?.prodctPrice, e?.user, e?.producImage, e?.category]);

  @override
  bool isValidKey(Object? o) => o is WishlistRecord;
}

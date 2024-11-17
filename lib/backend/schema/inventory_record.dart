import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class InventoryRecord extends FirestoreRecord {
  InventoryRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "inventory_name" field.
  String? _inventoryName;
  String get inventoryName => _inventoryName ?? '';
  bool hasInventoryName() => _inventoryName != null;

  // "inventory_image" field.
  String? _inventoryImage;
  String get inventoryImage => _inventoryImage ?? '';
  bool hasInventoryImage() => _inventoryImage != null;

  // "inventory_image2" field.
  String? _inventoryImage2;
  String get inventoryImage2 => _inventoryImage2 ?? '';
  bool hasInventoryImage2() => _inventoryImage2 != null;

  // "inventory_image3" field.
  String? _inventoryImage3;
  String get inventoryImage3 => _inventoryImage3 ?? '';
  bool hasInventoryImage3() => _inventoryImage3 != null;

  // "inventory_description" field.
  String? _inventoryDescription;
  String get inventoryDescription => _inventoryDescription ?? '';
  bool hasInventoryDescription() => _inventoryDescription != null;

  // "inventory_price" field.
  double? _inventoryPrice;
  double get inventoryPrice => _inventoryPrice ?? 0.0;
  bool hasInventoryPrice() => _inventoryPrice != null;

  // "top_selling" field.
  bool? _topSelling;
  bool get topSelling => _topSelling ?? false;
  bool hasTopSelling() => _topSelling != null;

  // "new_in" field.
  bool? _newIn;
  bool get newIn => _newIn ?? false;
  bool hasNewIn() => _newIn != null;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  bool hasCategory() => _category != null;

  // "clothe_type" field.
  String? _clotheType;
  String get clotheType => _clotheType ?? '';
  bool hasClotheType() => _clotheType != null;

  // "rating" field.
  double? _rating;
  double get rating => _rating ?? 0.0;
  bool hasRating() => _rating != null;

  // "seller_ref" field.
  DocumentReference? _sellerRef;
  DocumentReference? get sellerRef => _sellerRef;
  bool hasSellerRef() => _sellerRef != null;

  // "total_reviews" field.
  int? _totalReviews;
  int get totalReviews => _totalReviews ?? 0;
  bool hasTotalReviews() => _totalReviews != null;

  // "deals" field.
  String? _deals;
  String get deals => _deals ?? '';
  bool hasDeals() => _deals != null;

  // "wishlisters" field.
  List<DocumentReference>? _wishlisters;
  List<DocumentReference> get wishlisters => _wishlisters ?? const [];
  bool hasWishlisters() => _wishlisters != null;

  // "genders" field.
  String? _genders;
  String get genders => _genders ?? '';
  bool hasGenders() => _genders != null;

  // "sortby" field.
  String? _sortby;
  String get sortby => _sortby ?? '';
  bool hasSortby() => _sortby != null;

  // "price" field.
  String? _price;
  String get price => _price ?? '';
  bool hasPrice() => _price != null;

  void _initializeFields() {
    _inventoryName = snapshotData['inventory_name'] as String?;
    _inventoryImage = snapshotData['inventory_image'] as String?;
    _inventoryImage2 = snapshotData['inventory_image2'] as String?;
    _inventoryImage3 = snapshotData['inventory_image3'] as String?;
    _inventoryDescription = snapshotData['inventory_description'] as String?;
    _inventoryPrice = castToType<double>(snapshotData['inventory_price']);
    _topSelling = snapshotData['top_selling'] as bool?;
    _newIn = snapshotData['new_in'] as bool?;
    _category = snapshotData['category'] as String?;
    _clotheType = snapshotData['clothe_type'] as String?;
    _rating = castToType<double>(snapshotData['rating']);
    _sellerRef = snapshotData['seller_ref'] as DocumentReference?;
    _totalReviews = castToType<int>(snapshotData['total_reviews']);
    _deals = snapshotData['deals'] as String?;
    _wishlisters = getDataList(snapshotData['wishlisters']);
    _genders = snapshotData['genders'] as String?;
    _sortby = snapshotData['sortby'] as String?;
    _price = snapshotData['price'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('inventory');

  static Stream<InventoryRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => InventoryRecord.fromSnapshot(s));

  static Future<InventoryRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => InventoryRecord.fromSnapshot(s));

  static InventoryRecord fromSnapshot(DocumentSnapshot snapshot) =>
      InventoryRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static InventoryRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      InventoryRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'InventoryRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is InventoryRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createInventoryRecordData({
  String? inventoryName,
  String? inventoryImage,
  String? inventoryImage2,
  String? inventoryImage3,
  String? inventoryDescription,
  double? inventoryPrice,
  bool? topSelling,
  bool? newIn,
  String? category,
  String? clotheType,
  double? rating,
  DocumentReference? sellerRef,
  int? totalReviews,
  String? deals,
  String? genders,
  String? sortby,
  String? price,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'inventory_name': inventoryName,
      'inventory_image': inventoryImage,
      'inventory_image2': inventoryImage2,
      'inventory_image3': inventoryImage3,
      'inventory_description': inventoryDescription,
      'inventory_price': inventoryPrice,
      'top_selling': topSelling,
      'new_in': newIn,
      'category': category,
      'clothe_type': clotheType,
      'rating': rating,
      'seller_ref': sellerRef,
      'total_reviews': totalReviews,
      'deals': deals,
      'genders': genders,
      'sortby': sortby,
      'price': price,
    }.withoutNulls,
  );

  return firestoreData;
}

class InventoryRecordDocumentEquality implements Equality<InventoryRecord> {
  const InventoryRecordDocumentEquality();

  @override
  bool equals(InventoryRecord? e1, InventoryRecord? e2) {
    const listEquality = ListEquality();
    return e1?.inventoryName == e2?.inventoryName &&
        e1?.inventoryImage == e2?.inventoryImage &&
        e1?.inventoryImage2 == e2?.inventoryImage2 &&
        e1?.inventoryImage3 == e2?.inventoryImage3 &&
        e1?.inventoryDescription == e2?.inventoryDescription &&
        e1?.inventoryPrice == e2?.inventoryPrice &&
        e1?.topSelling == e2?.topSelling &&
        e1?.newIn == e2?.newIn &&
        e1?.category == e2?.category &&
        e1?.clotheType == e2?.clotheType &&
        e1?.rating == e2?.rating &&
        e1?.sellerRef == e2?.sellerRef &&
        e1?.totalReviews == e2?.totalReviews &&
        e1?.deals == e2?.deals &&
        listEquality.equals(e1?.wishlisters, e2?.wishlisters) &&
        e1?.genders == e2?.genders &&
        e1?.sortby == e2?.sortby &&
        e1?.price == e2?.price;
  }

  @override
  int hash(InventoryRecord? e) => const ListEquality().hash([
        e?.inventoryName,
        e?.inventoryImage,
        e?.inventoryImage2,
        e?.inventoryImage3,
        e?.inventoryDescription,
        e?.inventoryPrice,
        e?.topSelling,
        e?.newIn,
        e?.category,
        e?.clotheType,
        e?.rating,
        e?.sellerRef,
        e?.totalReviews,
        e?.deals,
        e?.wishlisters,
        e?.genders,
        e?.sortby,
        e?.price
      ]);

  @override
  bool isValidKey(Object? o) => o is InventoryRecord;
}

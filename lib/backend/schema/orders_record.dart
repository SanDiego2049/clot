import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OrdersRecord extends FirestoreRecord {
  OrdersRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "buyer" field.
  DocumentReference? _buyer;
  DocumentReference? get buyer => _buyer;
  bool hasBuyer() => _buyer != null;

  // "total_items" field.
  int? _totalItems;
  int get totalItems => _totalItems ?? 0;
  bool hasTotalItems() => _totalItems != null;

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  // "order_no" field.
  String? _orderNo;
  String get orderNo => _orderNo ?? '';
  bool hasOrderNo() => _orderNo != null;

  // "refID" field.
  String? _refID;
  String get refID => _refID ?? '';
  bool hasRefID() => _refID != null;

  // "amount" field.
  double? _amount;
  double get amount => _amount ?? 0.0;
  bool hasAmount() => _amount != null;

  // "address" field.
  String? _address;
  String get address => _address ?? '';
  bool hasAddress() => _address != null;

  void _initializeFields() {
    _buyer = snapshotData['buyer'] as DocumentReference?;
    _totalItems = castToType<int>(snapshotData['total_items']);
    _date = snapshotData['date'] as DateTime?;
    _orderNo = snapshotData['order_no'] as String?;
    _refID = snapshotData['refID'] as String?;
    _amount = castToType<double>(snapshotData['amount']);
    _address = snapshotData['address'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('orders');

  static Stream<OrdersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => OrdersRecord.fromSnapshot(s));

  static Future<OrdersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => OrdersRecord.fromSnapshot(s));

  static OrdersRecord fromSnapshot(DocumentSnapshot snapshot) => OrdersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static OrdersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      OrdersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'OrdersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is OrdersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createOrdersRecordData({
  DocumentReference? buyer,
  int? totalItems,
  DateTime? date,
  String? orderNo,
  String? refID,
  double? amount,
  String? address,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'buyer': buyer,
      'total_items': totalItems,
      'date': date,
      'order_no': orderNo,
      'refID': refID,
      'amount': amount,
      'address': address,
    }.withoutNulls,
  );

  return firestoreData;
}

class OrdersRecordDocumentEquality implements Equality<OrdersRecord> {
  const OrdersRecordDocumentEquality();

  @override
  bool equals(OrdersRecord? e1, OrdersRecord? e2) {
    return e1?.buyer == e2?.buyer &&
        e1?.totalItems == e2?.totalItems &&
        e1?.date == e2?.date &&
        e1?.orderNo == e2?.orderNo &&
        e1?.refID == e2?.refID &&
        e1?.amount == e2?.amount &&
        e1?.address == e2?.address;
  }

  @override
  int hash(OrdersRecord? e) => const ListEquality().hash([
        e?.buyer,
        e?.totalItems,
        e?.date,
        e?.orderNo,
        e?.refID,
        e?.amount,
        e?.address
      ]);

  @override
  bool isValidKey(Object? o) => o is OrdersRecord;
}

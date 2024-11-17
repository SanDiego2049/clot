import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PaymentRecord extends FirestoreRecord {
  PaymentRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "cardholder_name" field.
  String? _cardholderName;
  String get cardholderName => _cardholderName ?? '';
  bool hasCardholderName() => _cardholderName != null;

  // "cvv" field.
  int? _cvv;
  int get cvv => _cvv ?? 0;
  bool hasCvv() => _cvv != null;

  // "exp_date" field.
  DateTime? _expDate;
  DateTime? get expDate => _expDate;
  bool hasExpDate() => _expDate != null;

  // "cardholder_number" field.
  int? _cardholderNumber;
  int get cardholderNumber => _cardholderNumber ?? 0;
  bool hasCardholderNumber() => _cardholderNumber != null;

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  void _initializeFields() {
    _cardholderName = snapshotData['cardholder_name'] as String?;
    _cvv = castToType<int>(snapshotData['cvv']);
    _expDate = snapshotData['exp_date'] as DateTime?;
    _cardholderNumber = castToType<int>(snapshotData['cardholder_number']);
    _user = snapshotData['user'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('payment');

  static Stream<PaymentRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PaymentRecord.fromSnapshot(s));

  static Future<PaymentRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PaymentRecord.fromSnapshot(s));

  static PaymentRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PaymentRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PaymentRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PaymentRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PaymentRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PaymentRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPaymentRecordData({
  String? cardholderName,
  int? cvv,
  DateTime? expDate,
  int? cardholderNumber,
  DocumentReference? user,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'cardholder_name': cardholderName,
      'cvv': cvv,
      'exp_date': expDate,
      'cardholder_number': cardholderNumber,
      'user': user,
    }.withoutNulls,
  );

  return firestoreData;
}

class PaymentRecordDocumentEquality implements Equality<PaymentRecord> {
  const PaymentRecordDocumentEquality();

  @override
  bool equals(PaymentRecord? e1, PaymentRecord? e2) {
    return e1?.cardholderName == e2?.cardholderName &&
        e1?.cvv == e2?.cvv &&
        e1?.expDate == e2?.expDate &&
        e1?.cardholderNumber == e2?.cardholderNumber &&
        e1?.user == e2?.user;
  }

  @override
  int hash(PaymentRecord? e) => const ListEquality().hash(
      [e?.cardholderName, e?.cvv, e?.expDate, e?.cardholderNumber, e?.user]);

  @override
  bool isValidKey(Object? o) => o is PaymentRecord;
}

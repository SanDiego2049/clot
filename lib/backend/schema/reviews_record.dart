import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ReviewsRecord extends FirestoreRecord {
  ReviewsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "reviews" field.
  String? _reviews;
  String get reviews => _reviews ?? '';
  bool hasReviews() => _reviews != null;

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  // "reviewer_picture" field.
  String? _reviewerPicture;
  String get reviewerPicture => _reviewerPicture ?? '';
  bool hasReviewerPicture() => _reviewerPicture != null;

  // "reviewer" field.
  DocumentReference? _reviewer;
  DocumentReference? get reviewer => _reviewer;
  bool hasReviewer() => _reviewer != null;

  // "reviewer_name" field.
  String? _reviewerName;
  String get reviewerName => _reviewerName ?? '';
  bool hasReviewerName() => _reviewerName != null;

  // "rating" field.
  int? _rating;
  int get rating => _rating ?? 0;
  bool hasRating() => _rating != null;

  void _initializeFields() {
    _reviews = snapshotData['reviews'] as String?;
    _date = snapshotData['date'] as DateTime?;
    _reviewerPicture = snapshotData['reviewer_picture'] as String?;
    _reviewer = snapshotData['reviewer'] as DocumentReference?;
    _reviewerName = snapshotData['reviewer_name'] as String?;
    _rating = castToType<int>(snapshotData['rating']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('reviews');

  static Stream<ReviewsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ReviewsRecord.fromSnapshot(s));

  static Future<ReviewsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ReviewsRecord.fromSnapshot(s));

  static ReviewsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ReviewsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ReviewsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ReviewsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ReviewsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ReviewsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createReviewsRecordData({
  String? reviews,
  DateTime? date,
  String? reviewerPicture,
  DocumentReference? reviewer,
  String? reviewerName,
  int? rating,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'reviews': reviews,
      'date': date,
      'reviewer_picture': reviewerPicture,
      'reviewer': reviewer,
      'reviewer_name': reviewerName,
      'rating': rating,
    }.withoutNulls,
  );

  return firestoreData;
}

class ReviewsRecordDocumentEquality implements Equality<ReviewsRecord> {
  const ReviewsRecordDocumentEquality();

  @override
  bool equals(ReviewsRecord? e1, ReviewsRecord? e2) {
    return e1?.reviews == e2?.reviews &&
        e1?.date == e2?.date &&
        e1?.reviewerPicture == e2?.reviewerPicture &&
        e1?.reviewer == e2?.reviewer &&
        e1?.reviewerName == e2?.reviewerName &&
        e1?.rating == e2?.rating;
  }

  @override
  int hash(ReviewsRecord? e) => const ListEquality().hash([
        e?.reviews,
        e?.date,
        e?.reviewerPicture,
        e?.reviewer,
        e?.reviewerName,
        e?.rating
      ]);

  @override
  bool isValidKey(Object? o) => o is ReviewsRecord;
}

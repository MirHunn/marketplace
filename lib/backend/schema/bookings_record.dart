import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BookingsRecord extends FirestoreRecord {
  BookingsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "attendeeRef" field.
  DocumentReference? _attendeeRef;
  DocumentReference? get attendeeRef => _attendeeRef;
  bool hasAttendeeRef() => _attendeeRef != null;

  // "ownerRef" field.
  DocumentReference? _ownerRef;
  DocumentReference? get ownerRef => _ownerRef;
  bool hasOwnerRef() => _ownerRef != null;

  // "bookedTime" field.
  DateTime? _bookedTime;
  DateTime? get bookedTime => _bookedTime;
  bool hasBookedTime() => _bookedTime != null;

  // "pricingtemplateRef" field.
  DocumentReference? _pricingtemplateRef;
  DocumentReference? get pricingtemplateRef => _pricingtemplateRef;
  bool hasPricingtemplateRef() => _pricingtemplateRef != null;

  void _initializeFields() {
    _attendeeRef = snapshotData['attendeeRef'] as DocumentReference?;
    _ownerRef = snapshotData['ownerRef'] as DocumentReference?;
    _bookedTime = snapshotData['bookedTime'] as DateTime?;
    _pricingtemplateRef =
        snapshotData['pricingtemplateRef'] as DocumentReference?;
  }

  static CollectionReference get collection => FirebaseFirestore.instanceFor(
          app: Firebase.app(), databaseId: 'mirhunn-g6mdhy')
      .collection('bookings');

  static Stream<BookingsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BookingsRecord.fromSnapshot(s));

  static Future<BookingsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => BookingsRecord.fromSnapshot(s));

  static BookingsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      BookingsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BookingsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BookingsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BookingsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BookingsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBookingsRecordData({
  DocumentReference? attendeeRef,
  DocumentReference? ownerRef,
  DateTime? bookedTime,
  DocumentReference? pricingtemplateRef,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'attendeeRef': attendeeRef,
      'ownerRef': ownerRef,
      'bookedTime': bookedTime,
      'pricingtemplateRef': pricingtemplateRef,
    }.withoutNulls,
  );

  return firestoreData;
}

class BookingsRecordDocumentEquality implements Equality<BookingsRecord> {
  const BookingsRecordDocumentEquality();

  @override
  bool equals(BookingsRecord? e1, BookingsRecord? e2) {
    return e1?.attendeeRef == e2?.attendeeRef &&
        e1?.ownerRef == e2?.ownerRef &&
        e1?.bookedTime == e2?.bookedTime &&
        e1?.pricingtemplateRef == e2?.pricingtemplateRef;
  }

  @override
  int hash(BookingsRecord? e) => const ListEquality().hash(
      [e?.attendeeRef, e?.ownerRef, e?.bookedTime, e?.pricingtemplateRef]);

  @override
  bool isValidKey(Object? o) => o is BookingsRecord;
}

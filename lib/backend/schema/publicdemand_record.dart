import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PublicdemandRecord extends FirestoreRecord {
  PublicdemandRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "demandtext" field.
  String? _demandtext;
  String get demandtext => _demandtext ?? '';
  bool hasDemandtext() => _demandtext != null;

  // "demanduserref" field.
  DocumentReference? _demanduserref;
  DocumentReference? get demanduserref => _demanduserref;
  bool hasDemanduserref() => _demanduserref != null;

  // "demandsubject" field.
  String? _demandsubject;
  String get demandsubject => _demandsubject ?? '';
  bool hasDemandsubject() => _demandsubject != null;

  // "demandcategory" field.
  String? _demandcategory;
  String get demandcategory => _demandcategory ?? '';
  bool hasDemandcategory() => _demandcategory != null;

  // "createdTime" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "acceptedby" field.
  String? _acceptedby;
  String get acceptedby => _acceptedby ?? '';
  bool hasAcceptedby() => _acceptedby != null;

  void _initializeFields() {
    _demandtext = snapshotData['demandtext'] as String?;
    _demanduserref = snapshotData['demanduserref'] as DocumentReference?;
    _demandsubject = snapshotData['demandsubject'] as String?;
    _demandcategory = snapshotData['demandcategory'] as String?;
    _createdTime = snapshotData['createdTime'] as DateTime?;
    _acceptedby = snapshotData['acceptedby'] as String?;
  }

  static CollectionReference get collection => FirebaseFirestore.instanceFor(
          app: Firebase.app(), databaseId: 'mirhunn-g6mdhy')
      .collection('publicdemand');

  static Stream<PublicdemandRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PublicdemandRecord.fromSnapshot(s));

  static Future<PublicdemandRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PublicdemandRecord.fromSnapshot(s));

  static PublicdemandRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PublicdemandRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PublicdemandRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PublicdemandRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PublicdemandRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PublicdemandRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPublicdemandRecordData({
  String? demandtext,
  DocumentReference? demanduserref,
  String? demandsubject,
  String? demandcategory,
  DateTime? createdTime,
  String? acceptedby,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'demandtext': demandtext,
      'demanduserref': demanduserref,
      'demandsubject': demandsubject,
      'demandcategory': demandcategory,
      'createdTime': createdTime,
      'acceptedby': acceptedby,
    }.withoutNulls,
  );

  return firestoreData;
}

class PublicdemandRecordDocumentEquality
    implements Equality<PublicdemandRecord> {
  const PublicdemandRecordDocumentEquality();

  @override
  bool equals(PublicdemandRecord? e1, PublicdemandRecord? e2) {
    return e1?.demandtext == e2?.demandtext &&
        e1?.demanduserref == e2?.demanduserref &&
        e1?.demandsubject == e2?.demandsubject &&
        e1?.demandcategory == e2?.demandcategory &&
        e1?.createdTime == e2?.createdTime &&
        e1?.acceptedby == e2?.acceptedby;
  }

  @override
  int hash(PublicdemandRecord? e) => const ListEquality().hash([
        e?.demandtext,
        e?.demanduserref,
        e?.demandsubject,
        e?.demandcategory,
        e?.createdTime,
        e?.acceptedby
      ]);

  @override
  bool isValidKey(Object? o) => o is PublicdemandRecord;
}

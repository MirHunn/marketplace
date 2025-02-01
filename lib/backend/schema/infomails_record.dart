import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class InfomailsRecord extends FirestoreRecord {
  InfomailsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "to" field.
  String? _to;
  String get to => _to ?? '';
  bool hasTo() => _to != null;

  // "message" field.
  MessageStruct? _message;
  MessageStruct get message => _message ?? MessageStruct();
  bool hasMessage() => _message != null;

  void _initializeFields() {
    _to = snapshotData['to'] as String?;
    _message = snapshotData['message'] is MessageStruct
        ? snapshotData['message']
        : MessageStruct.maybeFromMap(snapshotData['message']);
  }

  static CollectionReference get collection => FirebaseFirestore.instanceFor(
          app: Firebase.app(), databaseId: 'mirhunn-g6mdhy')
      .collection('infomails');

  static Stream<InfomailsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => InfomailsRecord.fromSnapshot(s));

  static Future<InfomailsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => InfomailsRecord.fromSnapshot(s));

  static InfomailsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      InfomailsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static InfomailsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      InfomailsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'InfomailsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is InfomailsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createInfomailsRecordData({
  String? to,
  MessageStruct? message,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'to': to,
      'message': MessageStruct().toMap(),
    }.withoutNulls,
  );

  // Handle nested data for "message" field.
  addMessageStructData(firestoreData, message, 'message');

  return firestoreData;
}

class InfomailsRecordDocumentEquality implements Equality<InfomailsRecord> {
  const InfomailsRecordDocumentEquality();

  @override
  bool equals(InfomailsRecord? e1, InfomailsRecord? e2) {
    return e1?.to == e2?.to && e1?.message == e2?.message;
  }

  @override
  int hash(InfomailsRecord? e) =>
      const ListEquality().hash([e?.to, e?.message]);

  @override
  bool isValidKey(Object? o) => o is InfomailsRecord;
}

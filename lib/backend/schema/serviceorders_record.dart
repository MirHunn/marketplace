import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ServiceordersRecord extends FirestoreRecord {
  ServiceordersRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "startingtime" field.
  String? _startingtime;
  String get startingtime => _startingtime ?? '';
  bool hasStartingtime() => _startingtime != null;

  // "finishingtime" field.
  String? _finishingtime;
  String get finishingtime => _finishingtime ?? '';
  bool hasFinishingtime() => _finishingtime != null;

  // "location" field.
  String? _location;
  String get location => _location ?? '';
  bool hasLocation() => _location != null;

  // "weekdays" field.
  String? _weekdays;
  String get weekdays => _weekdays ?? '';
  bool hasWeekdays() => _weekdays != null;

  void _initializeFields() {
    _startingtime = snapshotData['startingtime'] as String?;
    _finishingtime = snapshotData['finishingtime'] as String?;
    _location = snapshotData['location'] as String?;
    _weekdays = snapshotData['weekdays'] as String?;
  }

  static CollectionReference get collection => FirebaseFirestore.instanceFor(
          app: Firebase.app(), databaseId: 'mirhunn-g6mdhy')
      .collection('serviceorders');

  static Stream<ServiceordersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ServiceordersRecord.fromSnapshot(s));

  static Future<ServiceordersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ServiceordersRecord.fromSnapshot(s));

  static ServiceordersRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ServiceordersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ServiceordersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ServiceordersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ServiceordersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ServiceordersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createServiceordersRecordData({
  String? startingtime,
  String? finishingtime,
  String? location,
  String? weekdays,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'startingtime': startingtime,
      'finishingtime': finishingtime,
      'location': location,
      'weekdays': weekdays,
    }.withoutNulls,
  );

  return firestoreData;
}

class ServiceordersRecordDocumentEquality
    implements Equality<ServiceordersRecord> {
  const ServiceordersRecordDocumentEquality();

  @override
  bool equals(ServiceordersRecord? e1, ServiceordersRecord? e2) {
    return e1?.startingtime == e2?.startingtime &&
        e1?.finishingtime == e2?.finishingtime &&
        e1?.location == e2?.location &&
        e1?.weekdays == e2?.weekdays;
  }

  @override
  int hash(ServiceordersRecord? e) => const ListEquality()
      .hash([e?.startingtime, e?.finishingtime, e?.location, e?.weekdays]);

  @override
  bool isValidKey(Object? o) => o is ServiceordersRecord;
}

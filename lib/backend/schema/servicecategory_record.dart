import 'dart:async';

import '/backend/algolia/algolia_manager.dart';
import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ServicecategoryRecord extends FirestoreRecord {
  ServicecategoryRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "servicecat" field.
  String? _servicecat;
  String get servicecat => _servicecat ?? '';
  bool hasServicecat() => _servicecat != null;

  // "servicelogo" field.
  String? _servicelogo;
  String get servicelogo => _servicelogo ?? '';
  bool hasServicelogo() => _servicelogo != null;

  void _initializeFields() {
    _servicecat = snapshotData['servicecat'] as String?;
    _servicelogo = snapshotData['servicelogo'] as String?;
  }

  static CollectionReference get collection => FirebaseFirestore.instanceFor(
          app: Firebase.app(), databaseId: 'mirhunn-g6mdhy')
      .collection('servicecategory');

  static Stream<ServicecategoryRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ServicecategoryRecord.fromSnapshot(s));

  static Future<ServicecategoryRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ServicecategoryRecord.fromSnapshot(s));

  static ServicecategoryRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ServicecategoryRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ServicecategoryRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ServicecategoryRecord._(reference, mapFromFirestore(data));

  static ServicecategoryRecord fromAlgolia(AlgoliaObjectSnapshot snapshot) =>
      ServicecategoryRecord.getDocumentFromData(
        {
          'servicecat': snapshot.data['servicecat'],
          'servicelogo': snapshot.data['servicelogo'],
        },
        ServicecategoryRecord.collection.doc(snapshot.objectID),
      );

  static Future<List<ServicecategoryRecord>> search({
    String? term,
    FutureOr<LatLng>? location,
    int? maxResults,
    double? searchRadiusMeters,
    bool useCache = false,
  }) =>
      FFAlgoliaManager.instance
          .algoliaQuery(
            index: 'servicecategory',
            term: term,
            maxResults: maxResults,
            location: location,
            searchRadiusMeters: searchRadiusMeters,
            useCache: useCache,
          )
          .then((r) => r.map(fromAlgolia).toList());

  @override
  String toString() =>
      'ServicecategoryRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ServicecategoryRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createServicecategoryRecordData({
  String? servicecat,
  String? servicelogo,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'servicecat': servicecat,
      'servicelogo': servicelogo,
    }.withoutNulls,
  );

  return firestoreData;
}

class ServicecategoryRecordDocumentEquality
    implements Equality<ServicecategoryRecord> {
  const ServicecategoryRecordDocumentEquality();

  @override
  bool equals(ServicecategoryRecord? e1, ServicecategoryRecord? e2) {
    return e1?.servicecat == e2?.servicecat &&
        e1?.servicelogo == e2?.servicelogo;
  }

  @override
  int hash(ServicecategoryRecord? e) =>
      const ListEquality().hash([e?.servicecat, e?.servicelogo]);

  @override
  bool isValidKey(Object? o) => o is ServicecategoryRecord;
}

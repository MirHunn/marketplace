import 'dart:async';

import '/backend/algolia/algolia_manager.dart';
import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class Servcategory2Record extends FirestoreRecord {
  Servcategory2Record._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "output" field.
  String? _output;
  String get output => _output ?? '';
  bool hasOutput() => _output != null;

  // "servcategoryRef" field.
  String? _servcategoryRef;
  String get servcategoryRef => _servcategoryRef ?? '';
  bool hasServcategoryRef() => _servcategoryRef != null;

  void _initializeFields() {
    _output = snapshotData['output'] as String?;
    _servcategoryRef = snapshotData['servcategoryRef'] as String?;
  }

  static CollectionReference get collection => FirebaseFirestore.instanceFor(
          app: Firebase.app(), databaseId: 'mirhunn-g6mdhy')
      .collection('servcategory2');

  static Stream<Servcategory2Record> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => Servcategory2Record.fromSnapshot(s));

  static Future<Servcategory2Record> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => Servcategory2Record.fromSnapshot(s));

  static Servcategory2Record fromSnapshot(DocumentSnapshot snapshot) =>
      Servcategory2Record._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static Servcategory2Record getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      Servcategory2Record._(reference, mapFromFirestore(data));

  static Servcategory2Record fromAlgolia(AlgoliaObjectSnapshot snapshot) =>
      Servcategory2Record.getDocumentFromData(
        {
          'output': snapshot.data['output'],
          'servcategoryRef': snapshot.data['servcategoryRef'],
        },
        Servcategory2Record.collection.doc(snapshot.objectID),
      );

  static Future<List<Servcategory2Record>> search({
    String? term,
    FutureOr<LatLng>? location,
    int? maxResults,
    double? searchRadiusMeters,
    bool useCache = false,
  }) =>
      FFAlgoliaManager.instance
          .algoliaQuery(
            index: 'servcategory2',
            term: term,
            maxResults: maxResults,
            location: location,
            searchRadiusMeters: searchRadiusMeters,
            useCache: useCache,
          )
          .then((r) => r.map(fromAlgolia).toList());

  @override
  String toString() =>
      'Servcategory2Record(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is Servcategory2Record &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createServcategory2RecordData({
  String? output,
  String? servcategoryRef,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'output': output,
      'servcategoryRef': servcategoryRef,
    }.withoutNulls,
  );

  return firestoreData;
}

class Servcategory2RecordDocumentEquality
    implements Equality<Servcategory2Record> {
  const Servcategory2RecordDocumentEquality();

  @override
  bool equals(Servcategory2Record? e1, Servcategory2Record? e2) {
    return e1?.output == e2?.output &&
        e1?.servcategoryRef == e2?.servcategoryRef;
  }

  @override
  int hash(Servcategory2Record? e) =>
      const ListEquality().hash([e?.output, e?.servcategoryRef]);

  @override
  bool isValidKey(Object? o) => o is Servcategory2Record;
}

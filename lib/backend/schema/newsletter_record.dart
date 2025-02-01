import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class NewsletterRecord extends FirestoreRecord {
  NewsletterRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "gallery" field.
  String? _gallery;
  String get gallery => _gallery ?? '';
  bool hasGallery() => _gallery != null;

  // "newsmaintext" field.
  String? _newsmaintext;
  String get newsmaintext => _newsmaintext ?? '';
  bool hasNewsmaintext() => _newsmaintext != null;

  // "newssmalltext" field.
  String? _newssmalltext;
  String get newssmalltext => _newssmalltext ?? '';
  bool hasNewssmalltext() => _newssmalltext != null;

  // "newsauditor" field.
  String? _newsauditor;
  String get newsauditor => _newsauditor ?? '';
  bool hasNewsauditor() => _newsauditor != null;

  void _initializeFields() {
    _gallery = snapshotData['gallery'] as String?;
    _newsmaintext = snapshotData['newsmaintext'] as String?;
    _newssmalltext = snapshotData['newssmalltext'] as String?;
    _newsauditor = snapshotData['newsauditor'] as String?;
  }

  static CollectionReference get collection => FirebaseFirestore.instanceFor(
          app: Firebase.app(), databaseId: 'mirhunn-g6mdhy')
      .collection('newsletter');

  static Stream<NewsletterRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => NewsletterRecord.fromSnapshot(s));

  static Future<NewsletterRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => NewsletterRecord.fromSnapshot(s));

  static NewsletterRecord fromSnapshot(DocumentSnapshot snapshot) =>
      NewsletterRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static NewsletterRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      NewsletterRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'NewsletterRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is NewsletterRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createNewsletterRecordData({
  String? gallery,
  String? newsmaintext,
  String? newssmalltext,
  String? newsauditor,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'gallery': gallery,
      'newsmaintext': newsmaintext,
      'newssmalltext': newssmalltext,
      'newsauditor': newsauditor,
    }.withoutNulls,
  );

  return firestoreData;
}

class NewsletterRecordDocumentEquality implements Equality<NewsletterRecord> {
  const NewsletterRecordDocumentEquality();

  @override
  bool equals(NewsletterRecord? e1, NewsletterRecord? e2) {
    return e1?.gallery == e2?.gallery &&
        e1?.newsmaintext == e2?.newsmaintext &&
        e1?.newssmalltext == e2?.newssmalltext &&
        e1?.newsauditor == e2?.newsauditor;
  }

  @override
  int hash(NewsletterRecord? e) => const ListEquality()
      .hash([e?.gallery, e?.newsmaintext, e?.newssmalltext, e?.newsauditor]);

  @override
  bool isValidKey(Object? o) => o is NewsletterRecord;
}

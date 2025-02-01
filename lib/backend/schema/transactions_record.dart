import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TransactionsRecord extends FirestoreRecord {
  TransactionsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "stripe_session_id" field.
  String? _stripeSessionId;
  String get stripeSessionId => _stripeSessionId ?? '';
  bool hasStripeSessionId() => _stripeSessionId != null;

  // "amount" field.
  int? _amount;
  int get amount => _amount ?? 0;
  bool hasAmount() => _amount != null;

  // "buyer_ref" field.
  DocumentReference? _buyerRef;
  DocumentReference? get buyerRef => _buyerRef;
  bool hasBuyerRef() => _buyerRef != null;

  // "seller_ref" field.
  DocumentReference? _sellerRef;
  DocumentReference? get sellerRef => _sellerRef;
  bool hasSellerRef() => _sellerRef != null;

  // "transactiondate" field.
  DateTime? _transactiondate;
  DateTime? get transactiondate => _transactiondate;
  bool hasTransactiondate() => _transactiondate != null;

  void _initializeFields() {
    _stripeSessionId = snapshotData['stripe_session_id'] as String?;
    _amount = castToType<int>(snapshotData['amount']);
    _buyerRef = snapshotData['buyer_ref'] as DocumentReference?;
    _sellerRef = snapshotData['seller_ref'] as DocumentReference?;
    _transactiondate = snapshotData['transactiondate'] as DateTime?;
  }

  static CollectionReference get collection => FirebaseFirestore.instanceFor(
          app: Firebase.app(), databaseId: 'mirhunn-g6mdhy')
      .collection('transactions');

  static Stream<TransactionsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TransactionsRecord.fromSnapshot(s));

  static Future<TransactionsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TransactionsRecord.fromSnapshot(s));

  static TransactionsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TransactionsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TransactionsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TransactionsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TransactionsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TransactionsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTransactionsRecordData({
  String? stripeSessionId,
  int? amount,
  DocumentReference? buyerRef,
  DocumentReference? sellerRef,
  DateTime? transactiondate,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'stripe_session_id': stripeSessionId,
      'amount': amount,
      'buyer_ref': buyerRef,
      'seller_ref': sellerRef,
      'transactiondate': transactiondate,
    }.withoutNulls,
  );

  return firestoreData;
}

class TransactionsRecordDocumentEquality
    implements Equality<TransactionsRecord> {
  const TransactionsRecordDocumentEquality();

  @override
  bool equals(TransactionsRecord? e1, TransactionsRecord? e2) {
    return e1?.stripeSessionId == e2?.stripeSessionId &&
        e1?.amount == e2?.amount &&
        e1?.buyerRef == e2?.buyerRef &&
        e1?.sellerRef == e2?.sellerRef &&
        e1?.transactiondate == e2?.transactiondate;
  }

  @override
  int hash(TransactionsRecord? e) => const ListEquality().hash([
        e?.stripeSessionId,
        e?.amount,
        e?.buyerRef,
        e?.sellerRef,
        e?.transactiondate
      ]);

  @override
  bool isValidKey(Object? o) => o is TransactionsRecord;
}

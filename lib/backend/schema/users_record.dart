import 'dart:async';

import '/backend/algolia/serialization_util.dart';
import '/backend/algolia/algolia_manager.dart';
import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "shortDescription" field.
  String? _shortDescription;
  String get shortDescription => _shortDescription ?? '';
  bool hasShortDescription() => _shortDescription != null;

  // "last_active_time" field.
  DateTime? _lastActiveTime;
  DateTime? get lastActiveTime => _lastActiveTime;
  bool hasLastActiveTime() => _lastActiveTime != null;

  // "role" field.
  String? _role;
  String get role => _role ?? '';
  bool hasRole() => _role != null;

  // "blockedUsers" field.
  List<DocumentReference>? _blockedUsers;
  List<DocumentReference> get blockedUsers => _blockedUsers ?? const [];
  bool hasBlockedUsers() => _blockedUsers != null;

  // "servRef" field.
  DocumentReference? _servRef;
  DocumentReference? get servRef => _servRef;
  bool hasServRef() => _servRef != null;

  // "connectedAccountId" field.
  String? _connectedAccountId;
  String get connectedAccountId => _connectedAccountId ?? '';
  bool hasConnectedAccountId() => _connectedAccountId != null;

  // "stripeAccountID" field.
  String? _stripeAccountID;
  String get stripeAccountID => _stripeAccountID ?? '';
  bool hasStripeAccountID() => _stripeAccountID != null;

  // "stripeChargesEnabled" field.
  bool? _stripeChargesEnabled;
  bool get stripeChargesEnabled => _stripeChargesEnabled ?? false;
  bool hasStripeChargesEnabled() => _stripeChargesEnabled != null;

  // "postalcode" field.
  String? _postalcode;
  String get postalcode => _postalcode ?? '';
  bool hasPostalcode() => _postalcode != null;

  // "streetaddress" field.
  String? _streetaddress;
  String get streetaddress => _streetaddress ?? '';
  bool hasStreetaddress() => _streetaddress != null;

  // "city" field.
  String? _city;
  String get city => _city ?? '';
  bool hasCity() => _city != null;

  // "productRef" field.
  List<DocumentReference>? _productRef;
  List<DocumentReference> get productRef => _productRef ?? const [];
  bool hasProductRef() => _productRef != null;

  // "pricingtemplateRef" field.
  DocumentReference? _pricingtemplateRef;
  DocumentReference? get pricingtemplateRef => _pricingtemplateRef;
  bool hasPricingtemplateRef() => _pricingtemplateRef != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _shortDescription = snapshotData['shortDescription'] as String?;
    _lastActiveTime = snapshotData['last_active_time'] as DateTime?;
    _role = snapshotData['role'] as String?;
    _blockedUsers = getDataList(snapshotData['blockedUsers']);
    _servRef = snapshotData['servRef'] as DocumentReference?;
    _connectedAccountId = snapshotData['connectedAccountId'] as String?;
    _stripeAccountID = snapshotData['stripeAccountID'] as String?;
    _stripeChargesEnabled = snapshotData['stripeChargesEnabled'] as bool?;
    _postalcode = snapshotData['postalcode'] as String?;
    _streetaddress = snapshotData['streetaddress'] as String?;
    _city = snapshotData['city'] as String?;
    _productRef = getDataList(snapshotData['productRef']);
    _pricingtemplateRef =
        snapshotData['pricingtemplateRef'] as DocumentReference?;
  }

  static CollectionReference get collection => FirebaseFirestore.instanceFor(
          app: Firebase.app(), databaseId: 'mirhunn-g6mdhy')
      .collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersRecord.fromSnapshot(s));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersRecord.fromSnapshot(s));

  static UsersRecord fromSnapshot(DocumentSnapshot snapshot) => UsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersRecord._(reference, mapFromFirestore(data));

  static UsersRecord fromAlgolia(AlgoliaObjectSnapshot snapshot) =>
      UsersRecord.getDocumentFromData(
        {
          'email': snapshot.data['email'],
          'display_name': snapshot.data['display_name'],
          'photo_url': snapshot.data['photo_url'],
          'uid': snapshot.data['uid'],
          'created_time': convertAlgoliaParam(
            snapshot.data['created_time'],
            ParamType.DateTime,
            false,
          ),
          'phone_number': snapshot.data['phone_number'],
          'shortDescription': snapshot.data['shortDescription'],
          'last_active_time': convertAlgoliaParam(
            snapshot.data['last_active_time'],
            ParamType.DateTime,
            false,
          ),
          'role': snapshot.data['role'],
          'blockedUsers': safeGet(
            () => convertAlgoliaParam<DocumentReference>(
              snapshot.data['blockedUsers'],
              ParamType.DocumentReference,
              true,
            ).toList(),
          ),
          'servRef': convertAlgoliaParam(
            snapshot.data['servRef'],
            ParamType.DocumentReference,
            false,
          ),
          'connectedAccountId': snapshot.data['connectedAccountId'],
          'stripeAccountID': snapshot.data['stripeAccountID'],
          'stripeChargesEnabled': snapshot.data['stripeChargesEnabled'],
          'postalcode': snapshot.data['postalcode'],
          'streetaddress': snapshot.data['streetaddress'],
          'city': snapshot.data['city'],
          'productRef': safeGet(
            () => convertAlgoliaParam<DocumentReference>(
              snapshot.data['productRef'],
              ParamType.DocumentReference,
              true,
            ).toList(),
          ),
          'pricingtemplateRef': convertAlgoliaParam(
            snapshot.data['pricingtemplateRef'],
            ParamType.DocumentReference,
            false,
          ),
        },
        UsersRecord.collection.doc(snapshot.objectID),
      );

  static Future<List<UsersRecord>> search({
    String? term,
    FutureOr<LatLng>? location,
    int? maxResults,
    double? searchRadiusMeters,
    bool useCache = false,
  }) =>
      FFAlgoliaManager.instance
          .algoliaQuery(
            index: 'users',
            term: term,
            maxResults: maxResults,
            location: location,
            searchRadiusMeters: searchRadiusMeters,
            useCache: useCache,
          )
          .then((r) => r.map(fromAlgolia).toList());

  @override
  String toString() =>
      'UsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsersRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  String? shortDescription,
  DateTime? lastActiveTime,
  String? role,
  DocumentReference? servRef,
  String? connectedAccountId,
  String? stripeAccountID,
  bool? stripeChargesEnabled,
  String? postalcode,
  String? streetaddress,
  String? city,
  DocumentReference? pricingtemplateRef,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'shortDescription': shortDescription,
      'last_active_time': lastActiveTime,
      'role': role,
      'servRef': servRef,
      'connectedAccountId': connectedAccountId,
      'stripeAccountID': stripeAccountID,
      'stripeChargesEnabled': stripeChargesEnabled,
      'postalcode': postalcode,
      'streetaddress': streetaddress,
      'city': city,
      'pricingtemplateRef': pricingtemplateRef,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    const listEquality = ListEquality();
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.shortDescription == e2?.shortDescription &&
        e1?.lastActiveTime == e2?.lastActiveTime &&
        e1?.role == e2?.role &&
        listEquality.equals(e1?.blockedUsers, e2?.blockedUsers) &&
        e1?.servRef == e2?.servRef &&
        e1?.connectedAccountId == e2?.connectedAccountId &&
        e1?.stripeAccountID == e2?.stripeAccountID &&
        e1?.stripeChargesEnabled == e2?.stripeChargesEnabled &&
        e1?.postalcode == e2?.postalcode &&
        e1?.streetaddress == e2?.streetaddress &&
        e1?.city == e2?.city &&
        listEquality.equals(e1?.productRef, e2?.productRef) &&
        e1?.pricingtemplateRef == e2?.pricingtemplateRef;
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.shortDescription,
        e?.lastActiveTime,
        e?.role,
        e?.blockedUsers,
        e?.servRef,
        e?.connectedAccountId,
        e?.stripeAccountID,
        e?.stripeChargesEnabled,
        e?.postalcode,
        e?.streetaddress,
        e?.city,
        e?.productRef,
        e?.pricingtemplateRef
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}

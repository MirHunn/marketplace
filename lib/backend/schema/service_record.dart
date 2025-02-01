import 'dart:async';

import '/backend/algolia/serialization_util.dart';
import '/backend/algolia/algolia_manager.dart';
import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ServiceRecord extends FirestoreRecord {
  ServiceRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "createdTime" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  bool hasPrice() => _price != null;

  // "salePrice" field.
  double? _salePrice;
  double get salePrice => _salePrice ?? 0.0;
  bool hasSalePrice() => _salePrice != null;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  bool hasCategory() => _category != null;

  // "owner" field.
  DocumentReference? _owner;
  DocumentReference? get owner => _owner;
  bool hasOwner() => _owner != null;

  // "tags" field.
  List<String>? _tags;
  List<String> get tags => _tags ?? const [];
  bool hasTags() => _tags != null;

  // "abouttalent" field.
  String? _abouttalent;
  String get abouttalent => _abouttalent ?? '';
  bool hasAbouttalent() => _abouttalent != null;

  // "backgroundimage" field.
  String? _backgroundimage;
  String get backgroundimage => _backgroundimage ?? '';
  bool hasBackgroundimage() => _backgroundimage != null;

  // "mainimage" field.
  String? _mainimage;
  String get mainimage => _mainimage ?? '';
  bool hasMainimage() => _mainimage != null;

  // "cartificationimage" field.
  String? _cartificationimage;
  String get cartificationimage => _cartificationimage ?? '';
  bool hasCartificationimage() => _cartificationimage != null;

  // "category2" field.
  List<String>? _category2;
  List<String> get category2 => _category2 ?? const [];
  bool hasCategory2() => _category2 != null;

  // "pricingtemplateID" field.
  DocumentReference? _pricingtemplateID;
  DocumentReference? get pricingtemplateID => _pricingtemplateID;
  bool hasPricingtemplateID() => _pricingtemplateID != null;

  // "Companyregistrationnumber" field.
  String? _companyregistrationnumber;
  String get companyregistrationnumber => _companyregistrationnumber ?? '';
  bool hasCompanyregistrationnumber() => _companyregistrationnumber != null;

  // "Bcompanynameinbank" field.
  String? _bcompanynameinbank;
  String get bcompanynameinbank => _bcompanynameinbank ?? '';
  bool hasBcompanynameinbank() => _bcompanynameinbank != null;

  // "BcompanyIBAN" field.
  String? _bcompanyIBAN;
  String get bcompanyIBAN => _bcompanyIBAN ?? '';
  bool hasBcompanyIBAN() => _bcompanyIBAN != null;

  // "BcompanyVATNUMBER" field.
  double? _bcompanyVATNUMBER;
  double get bcompanyVATNUMBER => _bcompanyVATNUMBER ?? 0.0;
  bool hasBcompanyVATNUMBER() => _bcompanyVATNUMBER != null;

  // "BooleanPeerprovider" field.
  bool? _booleanPeerprovider;
  bool get booleanPeerprovider => _booleanPeerprovider ?? false;
  bool hasBooleanPeerprovider() => _booleanPeerprovider != null;

  // "BooleanCompanyprovider" field.
  bool? _booleanCompanyprovider;
  bool get booleanCompanyprovider => _booleanCompanyprovider ?? false;
  bool hasBooleanCompanyprovider() => _booleanCompanyprovider != null;

  // "AccountHolderName" field.
  String? _accountHolderName;
  String get accountHolderName => _accountHolderName ?? '';
  bool hasAccountHolderName() => _accountHolderName != null;

  // "Bankname" field.
  String? _bankname;
  String get bankname => _bankname ?? '';
  bool hasBankname() => _bankname != null;

  // "termsofserviceaccepted" field.
  bool? _termsofserviceaccepted;
  bool get termsofserviceaccepted => _termsofserviceaccepted ?? false;
  bool hasTermsofserviceaccepted() => _termsofserviceaccepted != null;

  // "privacypolicyaccepted" field.
  bool? _privacypolicyaccepted;
  bool get privacypolicyaccepted => _privacypolicyaccepted ?? false;
  bool hasPrivacypolicyaccepted() => _privacypolicyaccepted != null;

  // "profitprice" field.
  double? _profitprice;
  double get profitprice => _profitprice ?? 0.0;
  bool hasProfitprice() => _profitprice != null;

  // "netprice" field.
  double? _netprice;
  double get netprice => _netprice ?? 0.0;
  bool hasNetprice() => _netprice != null;

  // "SERVICEACCEPTED" field.
  bool? _serviceaccepted;
  bool get serviceaccepted => _serviceaccepted ?? false;
  bool hasServiceaccepted() => _serviceaccepted != null;

  // "Video" field.
  String? _video;
  String get video => _video ?? '';
  bool hasVideo() => _video != null;

  // "MoreImages" field.
  List<String>? _moreImages;
  List<String> get moreImages => _moreImages ?? const [];
  bool hasMoreImages() => _moreImages != null;

  // "ratings" field.
  List<int>? _ratings;
  List<int> get ratings => _ratings ?? const [];
  bool hasRatings() => _ratings != null;

  // "usercanreview" field.
  List<DocumentReference>? _usercanreview;
  List<DocumentReference> get usercanreview => _usercanreview ?? const [];
  bool hasUsercanreview() => _usercanreview != null;

  // "promotionaccount" field.
  bool? _promotionaccount;
  bool get promotionaccount => _promotionaccount ?? false;
  bool hasPromotionaccount() => _promotionaccount != null;

  // "promotersinstalink" field.
  String? _promotersinstalink;
  String get promotersinstalink => _promotersinstalink ?? '';
  bool hasPromotersinstalink() => _promotersinstalink != null;

  // "promotersfacebooklink" field.
  String? _promotersfacebooklink;
  String get promotersfacebooklink => _promotersfacebooklink ?? '';
  bool hasPromotersfacebooklink() => _promotersfacebooklink != null;

  // "promoterslinkedinlink" field.
  String? _promoterslinkedinlink;
  String get promoterslinkedinlink => _promoterslinkedinlink ?? '';
  bool hasPromoterslinkedinlink() => _promoterslinkedinlink != null;

  // "promoterswebsitelink" field.
  String? _promoterswebsitelink;
  String get promoterswebsitelink => _promoterswebsitelink ?? '';
  bool hasPromoterswebsitelink() => _promoterswebsitelink != null;

  // "promotersemail" field.
  String? _promotersemail;
  String get promotersemail => _promotersemail ?? '';
  bool hasPromotersemail() => _promotersemail != null;

  // "promotersphonenumber" field.
  String? _promotersphonenumber;
  String get promotersphonenumber => _promotersphonenumber ?? '';
  bool hasPromotersphonenumber() => _promotersphonenumber != null;

  // "clickcount" field.
  int? _clickcount;
  int get clickcount => _clickcount ?? 0;
  bool hasClickcount() => _clickcount != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _description = snapshotData['description'] as String?;
    _createdTime = snapshotData['createdTime'] as DateTime?;
    _price = castToType<double>(snapshotData['price']);
    _salePrice = castToType<double>(snapshotData['salePrice']);
    _category = snapshotData['category'] as String?;
    _owner = snapshotData['owner'] as DocumentReference?;
    _tags = getDataList(snapshotData['tags']);
    _abouttalent = snapshotData['abouttalent'] as String?;
    _backgroundimage = snapshotData['backgroundimage'] as String?;
    _mainimage = snapshotData['mainimage'] as String?;
    _cartificationimage = snapshotData['cartificationimage'] as String?;
    _category2 = getDataList(snapshotData['category2']);
    _pricingtemplateID =
        snapshotData['pricingtemplateID'] as DocumentReference?;
    _companyregistrationnumber =
        snapshotData['Companyregistrationnumber'] as String?;
    _bcompanynameinbank = snapshotData['Bcompanynameinbank'] as String?;
    _bcompanyIBAN = snapshotData['BcompanyIBAN'] as String?;
    _bcompanyVATNUMBER = castToType<double>(snapshotData['BcompanyVATNUMBER']);
    _booleanPeerprovider = snapshotData['BooleanPeerprovider'] as bool?;
    _booleanCompanyprovider = snapshotData['BooleanCompanyprovider'] as bool?;
    _accountHolderName = snapshotData['AccountHolderName'] as String?;
    _bankname = snapshotData['Bankname'] as String?;
    _termsofserviceaccepted = snapshotData['termsofserviceaccepted'] as bool?;
    _privacypolicyaccepted = snapshotData['privacypolicyaccepted'] as bool?;
    _profitprice = castToType<double>(snapshotData['profitprice']);
    _netprice = castToType<double>(snapshotData['netprice']);
    _serviceaccepted = snapshotData['SERVICEACCEPTED'] as bool?;
    _video = snapshotData['Video'] as String?;
    _moreImages = getDataList(snapshotData['MoreImages']);
    _ratings = getDataList(snapshotData['ratings']);
    _usercanreview = getDataList(snapshotData['usercanreview']);
    _promotionaccount = snapshotData['promotionaccount'] as bool?;
    _promotersinstalink = snapshotData['promotersinstalink'] as String?;
    _promotersfacebooklink = snapshotData['promotersfacebooklink'] as String?;
    _promoterslinkedinlink = snapshotData['promoterslinkedinlink'] as String?;
    _promoterswebsitelink = snapshotData['promoterswebsitelink'] as String?;
    _promotersemail = snapshotData['promotersemail'] as String?;
    _promotersphonenumber = snapshotData['promotersphonenumber'] as String?;
    _clickcount = castToType<int>(snapshotData['clickcount']);
  }

  static CollectionReference get collection => FirebaseFirestore.instanceFor(
          app: Firebase.app(), databaseId: 'mirhunn-g6mdhy')
      .collection('service');

  static Stream<ServiceRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ServiceRecord.fromSnapshot(s));

  static Future<ServiceRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ServiceRecord.fromSnapshot(s));

  static ServiceRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ServiceRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ServiceRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ServiceRecord._(reference, mapFromFirestore(data));

  static ServiceRecord fromAlgolia(AlgoliaObjectSnapshot snapshot) =>
      ServiceRecord.getDocumentFromData(
        {
          'name': snapshot.data['name'],
          'description': snapshot.data['description'],
          'createdTime': convertAlgoliaParam(
            snapshot.data['createdTime'],
            ParamType.DateTime,
            false,
          ),
          'price': convertAlgoliaParam(
            snapshot.data['price'],
            ParamType.double,
            false,
          ),
          'salePrice': convertAlgoliaParam(
            snapshot.data['salePrice'],
            ParamType.double,
            false,
          ),
          'category': snapshot.data['category'],
          'owner': convertAlgoliaParam(
            snapshot.data['owner'],
            ParamType.DocumentReference,
            false,
          ),
          'tags': safeGet(
            () => snapshot.data['tags'].toList(),
          ),
          'abouttalent': snapshot.data['abouttalent'],
          'backgroundimage': snapshot.data['backgroundimage'],
          'mainimage': snapshot.data['mainimage'],
          'cartificationimage': snapshot.data['cartificationimage'],
          'category2': safeGet(
            () => snapshot.data['category2'].toList(),
          ),
          'pricingtemplateID': convertAlgoliaParam(
            snapshot.data['pricingtemplateID'],
            ParamType.DocumentReference,
            false,
          ),
          'Companyregistrationnumber':
              snapshot.data['Companyregistrationnumber'],
          'Bcompanynameinbank': snapshot.data['Bcompanynameinbank'],
          'BcompanyIBAN': snapshot.data['BcompanyIBAN'],
          'BcompanyVATNUMBER': convertAlgoliaParam(
            snapshot.data['BcompanyVATNUMBER'],
            ParamType.double,
            false,
          ),
          'BooleanPeerprovider': snapshot.data['BooleanPeerprovider'],
          'BooleanCompanyprovider': snapshot.data['BooleanCompanyprovider'],
          'AccountHolderName': snapshot.data['AccountHolderName'],
          'Bankname': snapshot.data['Bankname'],
          'termsofserviceaccepted': snapshot.data['termsofserviceaccepted'],
          'privacypolicyaccepted': snapshot.data['privacypolicyaccepted'],
          'profitprice': convertAlgoliaParam(
            snapshot.data['profitprice'],
            ParamType.double,
            false,
          ),
          'netprice': convertAlgoliaParam(
            snapshot.data['netprice'],
            ParamType.double,
            false,
          ),
          'SERVICEACCEPTED': snapshot.data['SERVICEACCEPTED'],
          'Video': snapshot.data['Video'],
          'MoreImages': safeGet(
            () => snapshot.data['MoreImages'].toList(),
          ),
          'ratings': safeGet(
            () => convertAlgoliaParam<int>(
              snapshot.data['ratings'],
              ParamType.int,
              true,
            ).toList(),
          ),
          'usercanreview': safeGet(
            () => convertAlgoliaParam<DocumentReference>(
              snapshot.data['usercanreview'],
              ParamType.DocumentReference,
              true,
            ).toList(),
          ),
          'promotionaccount': snapshot.data['promotionaccount'],
          'promotersinstalink': snapshot.data['promotersinstalink'],
          'promotersfacebooklink': snapshot.data['promotersfacebooklink'],
          'promoterslinkedinlink': snapshot.data['promoterslinkedinlink'],
          'promoterswebsitelink': snapshot.data['promoterswebsitelink'],
          'promotersemail': snapshot.data['promotersemail'],
          'promotersphonenumber': snapshot.data['promotersphonenumber'],
          'clickcount': convertAlgoliaParam(
            snapshot.data['clickcount'],
            ParamType.int,
            false,
          ),
        },
        ServiceRecord.collection.doc(snapshot.objectID),
      );

  static Future<List<ServiceRecord>> search({
    String? term,
    FutureOr<LatLng>? location,
    int? maxResults,
    double? searchRadiusMeters,
    bool useCache = false,
  }) =>
      FFAlgoliaManager.instance
          .algoliaQuery(
            index: 'service',
            term: term,
            maxResults: maxResults,
            location: location,
            searchRadiusMeters: searchRadiusMeters,
            useCache: useCache,
          )
          .then((r) => r.map(fromAlgolia).toList());

  @override
  String toString() =>
      'ServiceRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ServiceRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createServiceRecordData({
  String? name,
  String? description,
  DateTime? createdTime,
  double? price,
  double? salePrice,
  String? category,
  DocumentReference? owner,
  String? abouttalent,
  String? backgroundimage,
  String? mainimage,
  String? cartificationimage,
  DocumentReference? pricingtemplateID,
  String? companyregistrationnumber,
  String? bcompanynameinbank,
  String? bcompanyIBAN,
  double? bcompanyVATNUMBER,
  bool? booleanPeerprovider,
  bool? booleanCompanyprovider,
  String? accountHolderName,
  String? bankname,
  bool? termsofserviceaccepted,
  bool? privacypolicyaccepted,
  double? profitprice,
  double? netprice,
  bool? serviceaccepted,
  String? video,
  bool? promotionaccount,
  String? promotersinstalink,
  String? promotersfacebooklink,
  String? promoterslinkedinlink,
  String? promoterswebsitelink,
  String? promotersemail,
  String? promotersphonenumber,
  int? clickcount,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'description': description,
      'createdTime': createdTime,
      'price': price,
      'salePrice': salePrice,
      'category': category,
      'owner': owner,
      'abouttalent': abouttalent,
      'backgroundimage': backgroundimage,
      'mainimage': mainimage,
      'cartificationimage': cartificationimage,
      'pricingtemplateID': pricingtemplateID,
      'Companyregistrationnumber': companyregistrationnumber,
      'Bcompanynameinbank': bcompanynameinbank,
      'BcompanyIBAN': bcompanyIBAN,
      'BcompanyVATNUMBER': bcompanyVATNUMBER,
      'BooleanPeerprovider': booleanPeerprovider,
      'BooleanCompanyprovider': booleanCompanyprovider,
      'AccountHolderName': accountHolderName,
      'Bankname': bankname,
      'termsofserviceaccepted': termsofserviceaccepted,
      'privacypolicyaccepted': privacypolicyaccepted,
      'profitprice': profitprice,
      'netprice': netprice,
      'SERVICEACCEPTED': serviceaccepted,
      'Video': video,
      'promotionaccount': promotionaccount,
      'promotersinstalink': promotersinstalink,
      'promotersfacebooklink': promotersfacebooklink,
      'promoterslinkedinlink': promoterslinkedinlink,
      'promoterswebsitelink': promoterswebsitelink,
      'promotersemail': promotersemail,
      'promotersphonenumber': promotersphonenumber,
      'clickcount': clickcount,
    }.withoutNulls,
  );

  return firestoreData;
}

class ServiceRecordDocumentEquality implements Equality<ServiceRecord> {
  const ServiceRecordDocumentEquality();

  @override
  bool equals(ServiceRecord? e1, ServiceRecord? e2) {
    const listEquality = ListEquality();
    return e1?.name == e2?.name &&
        e1?.description == e2?.description &&
        e1?.createdTime == e2?.createdTime &&
        e1?.price == e2?.price &&
        e1?.salePrice == e2?.salePrice &&
        e1?.category == e2?.category &&
        e1?.owner == e2?.owner &&
        listEquality.equals(e1?.tags, e2?.tags) &&
        e1?.abouttalent == e2?.abouttalent &&
        e1?.backgroundimage == e2?.backgroundimage &&
        e1?.mainimage == e2?.mainimage &&
        e1?.cartificationimage == e2?.cartificationimage &&
        listEquality.equals(e1?.category2, e2?.category2) &&
        e1?.pricingtemplateID == e2?.pricingtemplateID &&
        e1?.companyregistrationnumber == e2?.companyregistrationnumber &&
        e1?.bcompanynameinbank == e2?.bcompanynameinbank &&
        e1?.bcompanyIBAN == e2?.bcompanyIBAN &&
        e1?.bcompanyVATNUMBER == e2?.bcompanyVATNUMBER &&
        e1?.booleanPeerprovider == e2?.booleanPeerprovider &&
        e1?.booleanCompanyprovider == e2?.booleanCompanyprovider &&
        e1?.accountHolderName == e2?.accountHolderName &&
        e1?.bankname == e2?.bankname &&
        e1?.termsofserviceaccepted == e2?.termsofserviceaccepted &&
        e1?.privacypolicyaccepted == e2?.privacypolicyaccepted &&
        e1?.profitprice == e2?.profitprice &&
        e1?.netprice == e2?.netprice &&
        e1?.serviceaccepted == e2?.serviceaccepted &&
        e1?.video == e2?.video &&
        listEquality.equals(e1?.moreImages, e2?.moreImages) &&
        listEquality.equals(e1?.ratings, e2?.ratings) &&
        listEquality.equals(e1?.usercanreview, e2?.usercanreview) &&
        e1?.promotionaccount == e2?.promotionaccount &&
        e1?.promotersinstalink == e2?.promotersinstalink &&
        e1?.promotersfacebooklink == e2?.promotersfacebooklink &&
        e1?.promoterslinkedinlink == e2?.promoterslinkedinlink &&
        e1?.promoterswebsitelink == e2?.promoterswebsitelink &&
        e1?.promotersemail == e2?.promotersemail &&
        e1?.promotersphonenumber == e2?.promotersphonenumber &&
        e1?.clickcount == e2?.clickcount;
  }

  @override
  int hash(ServiceRecord? e) => const ListEquality().hash([
        e?.name,
        e?.description,
        e?.createdTime,
        e?.price,
        e?.salePrice,
        e?.category,
        e?.owner,
        e?.tags,
        e?.abouttalent,
        e?.backgroundimage,
        e?.mainimage,
        e?.cartificationimage,
        e?.category2,
        e?.pricingtemplateID,
        e?.companyregistrationnumber,
        e?.bcompanynameinbank,
        e?.bcompanyIBAN,
        e?.bcompanyVATNUMBER,
        e?.booleanPeerprovider,
        e?.booleanCompanyprovider,
        e?.accountHolderName,
        e?.bankname,
        e?.termsofserviceaccepted,
        e?.privacypolicyaccepted,
        e?.profitprice,
        e?.netprice,
        e?.serviceaccepted,
        e?.video,
        e?.moreImages,
        e?.ratings,
        e?.usercanreview,
        e?.promotionaccount,
        e?.promotersinstalink,
        e?.promotersfacebooklink,
        e?.promoterslinkedinlink,
        e?.promoterswebsitelink,
        e?.promotersemail,
        e?.promotersphonenumber,
        e?.clickcount
      ]);

  @override
  bool isValidKey(Object? o) => o is ServiceRecord;
}

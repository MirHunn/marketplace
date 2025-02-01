import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PricingtemplateRecord extends FirestoreRecord {
  PricingtemplateRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "serviceID" field.
  DocumentReference? _serviceID;
  DocumentReference? get serviceID => _serviceID;
  bool hasServiceID() => _serviceID != null;

  // "PERHOUR" field.
  bool? _perhour;
  bool get perhour => _perhour ?? false;
  bool hasPerhour() => _perhour != null;

  // "namePERHOUR" field.
  String? _namePERHOUR;
  String get namePERHOUR => _namePERHOUR ?? '';
  bool hasNamePERHOUR() => _namePERHOUR != null;

  // "pricePERHOUR" field.
  double? _pricePERHOUR;
  double get pricePERHOUR => _pricePERHOUR ?? 0.0;
  bool hasPricePERHOUR() => _pricePERHOUR != null;

  // "descriptionPERHOUR" field.
  String? _descriptionPERHOUR;
  String get descriptionPERHOUR => _descriptionPERHOUR ?? '';
  bool hasDescriptionPERHOUR() => _descriptionPERHOUR != null;

  // "PERSESSION" field.
  bool? _persession;
  bool get persession => _persession ?? false;
  bool hasPersession() => _persession != null;

  // "namePERSESSION" field.
  String? _namePERSESSION;
  String get namePERSESSION => _namePERSESSION ?? '';
  bool hasNamePERSESSION() => _namePERSESSION != null;

  // "pricePERSESSION" field.
  double? _pricePERSESSION;
  double get pricePERSESSION => _pricePERSESSION ?? 0.0;
  bool hasPricePERSESSION() => _pricePERSESSION != null;

  // "numberofweeksPERSESSION" field.
  String? _numberofweeksPERSESSION;
  String get numberofweeksPERSESSION => _numberofweeksPERSESSION ?? '';
  bool hasNumberofweeksPERSESSION() => _numberofweeksPERSESSION != null;

  // "descriptionPERSESSION" field.
  String? _descriptionPERSESSION;
  String get descriptionPERSESSION => _descriptionPERSESSION ?? '';
  bool hasDescriptionPERSESSION() => _descriptionPERSESSION != null;

  // "PERPROGRAM" field.
  bool? _perprogram;
  bool get perprogram => _perprogram ?? false;
  bool hasPerprogram() => _perprogram != null;

  // "namePERPROGRAM" field.
  String? _namePERPROGRAM;
  String get namePERPROGRAM => _namePERPROGRAM ?? '';
  bool hasNamePERPROGRAM() => _namePERPROGRAM != null;

  // "pricePERPROGRAM" field.
  double? _pricePERPROGRAM;
  double get pricePERPROGRAM => _pricePERPROGRAM ?? 0.0;
  bool hasPricePERPROGRAM() => _pricePERPROGRAM != null;

  // "selecteddaysPERPROGRAM" field.
  List<String>? _selecteddaysPERPROGRAM;
  List<String> get selecteddaysPERPROGRAM =>
      _selecteddaysPERPROGRAM ?? const [];
  bool hasSelecteddaysPERPROGRAM() => _selecteddaysPERPROGRAM != null;

  // "numberofweeksPERPROGRAM" field.
  String? _numberofweeksPERPROGRAM;
  String get numberofweeksPERPROGRAM => _numberofweeksPERPROGRAM ?? '';
  bool hasNumberofweeksPERPROGRAM() => _numberofweeksPERPROGRAM != null;

  // "totalnumberofhoursPERPROGRAM" field.
  int? _totalnumberofhoursPERPROGRAM;
  int get totalnumberofhoursPERPROGRAM => _totalnumberofhoursPERPROGRAM ?? 0;
  bool hasTotalnumberofhoursPERPROGRAM() =>
      _totalnumberofhoursPERPROGRAM != null;

  // "descriptionPERPROGRAM" field.
  String? _descriptionPERPROGRAM;
  String get descriptionPERPROGRAM => _descriptionPERPROGRAM ?? '';
  bool hasDescriptionPERPROGRAM() => _descriptionPERPROGRAM != null;

  // "totalnumberofhoursPERSESSION" field.
  int? _totalnumberofhoursPERSESSION;
  int get totalnumberofhoursPERSESSION => _totalnumberofhoursPERSESSION ?? 0;
  bool hasTotalnumberofhoursPERSESSION() =>
      _totalnumberofhoursPERSESSION != null;

  // "PERPRODUCT" field.
  bool? _perproduct;
  bool get perproduct => _perproduct ?? false;
  bool hasPerproduct() => _perproduct != null;

  // "namePERPRODUCT" field.
  String? _namePERPRODUCT;
  String get namePERPRODUCT => _namePERPRODUCT ?? '';
  bool hasNamePERPRODUCT() => _namePERPRODUCT != null;

  // "pricePERPRODUCT" field.
  double? _pricePERPRODUCT;
  double get pricePERPRODUCT => _pricePERPRODUCT ?? 0.0;
  bool hasPricePERPRODUCT() => _pricePERPRODUCT != null;

  // "productiontimePERPRODUCT" field.
  String? _productiontimePERPRODUCT;
  String get productiontimePERPRODUCT => _productiontimePERPRODUCT ?? '';
  bool hasProductiontimePERPRODUCT() => _productiontimePERPRODUCT != null;

  // "descriptionPERPRODUCT" field.
  String? _descriptionPERPRODUCT;
  String get descriptionPERPRODUCT => _descriptionPERPRODUCT ?? '';
  bool hasDescriptionPERPRODUCT() => _descriptionPERPRODUCT != null;

  // "owner" field.
  DocumentReference? _owner;
  DocumentReference? get owner => _owner;
  bool hasOwner() => _owner != null;

  // "selecteddaysPERSESSION" field.
  List<String>? _selecteddaysPERSESSION;
  List<String> get selecteddaysPERSESSION =>
      _selecteddaysPERSESSION ?? const [];
  bool hasSelecteddaysPERSESSION() => _selecteddaysPERSESSION != null;

  // "locationPERHOUR" field.
  List<String>? _locationPERHOUR;
  List<String> get locationPERHOUR => _locationPERHOUR ?? const [];
  bool hasLocationPERHOUR() => _locationPERHOUR != null;

  // "locationPERSESSION" field.
  List<String>? _locationPERSESSION;
  List<String> get locationPERSESSION => _locationPERSESSION ?? const [];
  bool hasLocationPERSESSION() => _locationPERSESSION != null;

  // "locationPERPROGRAM" field.
  List<String>? _locationPERPROGRAM;
  List<String> get locationPERPROGRAM => _locationPERPROGRAM ?? const [];
  bool hasLocationPERPROGRAM() => _locationPERPROGRAM != null;

  // "startingtimePERSESSION" field.
  List<String>? _startingtimePERSESSION;
  List<String> get startingtimePERSESSION =>
      _startingtimePERSESSION ?? const [];
  bool hasStartingtimePERSESSION() => _startingtimePERSESSION != null;

  // "finishingtimePERSESSION" field.
  List<String>? _finishingtimePERSESSION;
  List<String> get finishingtimePERSESSION =>
      _finishingtimePERSESSION ?? const [];
  bool hasFinishingtimePERSESSION() => _finishingtimePERSESSION != null;

  // "startingtimePERPROGRAM" field.
  List<String>? _startingtimePERPROGRAM;
  List<String> get startingtimePERPROGRAM =>
      _startingtimePERPROGRAM ?? const [];
  bool hasStartingtimePERPROGRAM() => _startingtimePERPROGRAM != null;

  // "finishingtimePERPROGRAM" field.
  List<String>? _finishingtimePERPROGRAM;
  List<String> get finishingtimePERPROGRAM =>
      _finishingtimePERPROGRAM ?? const [];
  bool hasFinishingtimePERPROGRAM() => _finishingtimePERPROGRAM != null;

  // "deliverytypePERPRODUCT" field.
  List<String>? _deliverytypePERPRODUCT;
  List<String> get deliverytypePERPRODUCT =>
      _deliverytypePERPRODUCT ?? const [];
  bool hasDeliverytypePERPRODUCT() => _deliverytypePERPRODUCT != null;

  // "availability" field.
  List<AvailabilityStruct>? _availability;
  List<AvailabilityStruct> get availability => _availability ?? const [];
  bool hasAvailability() => _availability != null;

  // "usersthatareabletoreview" field.
  List<DocumentReference>? _usersthatareabletoreview;
  List<DocumentReference> get usersthatareabletoreview =>
      _usersthatareabletoreview ?? const [];
  bool hasUsersthatareabletoreview() => _usersthatareabletoreview != null;

  void _initializeFields() {
    _serviceID = snapshotData['serviceID'] as DocumentReference?;
    _perhour = snapshotData['PERHOUR'] as bool?;
    _namePERHOUR = snapshotData['namePERHOUR'] as String?;
    _pricePERHOUR = castToType<double>(snapshotData['pricePERHOUR']);
    _descriptionPERHOUR = snapshotData['descriptionPERHOUR'] as String?;
    _persession = snapshotData['PERSESSION'] as bool?;
    _namePERSESSION = snapshotData['namePERSESSION'] as String?;
    _pricePERSESSION = castToType<double>(snapshotData['pricePERSESSION']);
    _numberofweeksPERSESSION =
        snapshotData['numberofweeksPERSESSION'] as String?;
    _descriptionPERSESSION = snapshotData['descriptionPERSESSION'] as String?;
    _perprogram = snapshotData['PERPROGRAM'] as bool?;
    _namePERPROGRAM = snapshotData['namePERPROGRAM'] as String?;
    _pricePERPROGRAM = castToType<double>(snapshotData['pricePERPROGRAM']);
    _selecteddaysPERPROGRAM =
        getDataList(snapshotData['selecteddaysPERPROGRAM']);
    _numberofweeksPERPROGRAM =
        snapshotData['numberofweeksPERPROGRAM'] as String?;
    _totalnumberofhoursPERPROGRAM =
        castToType<int>(snapshotData['totalnumberofhoursPERPROGRAM']);
    _descriptionPERPROGRAM = snapshotData['descriptionPERPROGRAM'] as String?;
    _totalnumberofhoursPERSESSION =
        castToType<int>(snapshotData['totalnumberofhoursPERSESSION']);
    _perproduct = snapshotData['PERPRODUCT'] as bool?;
    _namePERPRODUCT = snapshotData['namePERPRODUCT'] as String?;
    _pricePERPRODUCT = castToType<double>(snapshotData['pricePERPRODUCT']);
    _productiontimePERPRODUCT =
        snapshotData['productiontimePERPRODUCT'] as String?;
    _descriptionPERPRODUCT = snapshotData['descriptionPERPRODUCT'] as String?;
    _owner = snapshotData['owner'] as DocumentReference?;
    _selecteddaysPERSESSION =
        getDataList(snapshotData['selecteddaysPERSESSION']);
    _locationPERHOUR = getDataList(snapshotData['locationPERHOUR']);
    _locationPERSESSION = getDataList(snapshotData['locationPERSESSION']);
    _locationPERPROGRAM = getDataList(snapshotData['locationPERPROGRAM']);
    _startingtimePERSESSION =
        getDataList(snapshotData['startingtimePERSESSION']);
    _finishingtimePERSESSION =
        getDataList(snapshotData['finishingtimePERSESSION']);
    _startingtimePERPROGRAM =
        getDataList(snapshotData['startingtimePERPROGRAM']);
    _finishingtimePERPROGRAM =
        getDataList(snapshotData['finishingtimePERPROGRAM']);
    _deliverytypePERPRODUCT =
        getDataList(snapshotData['deliverytypePERPRODUCT']);
    _availability = getStructList(
      snapshotData['availability'],
      AvailabilityStruct.fromMap,
    );
    _usersthatareabletoreview =
        getDataList(snapshotData['usersthatareabletoreview']);
  }

  static CollectionReference get collection => FirebaseFirestore.instanceFor(
          app: Firebase.app(), databaseId: 'mirhunn-g6mdhy')
      .collection('pricingtemplate');

  static Stream<PricingtemplateRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PricingtemplateRecord.fromSnapshot(s));

  static Future<PricingtemplateRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PricingtemplateRecord.fromSnapshot(s));

  static PricingtemplateRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PricingtemplateRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PricingtemplateRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PricingtemplateRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PricingtemplateRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PricingtemplateRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPricingtemplateRecordData({
  DocumentReference? serviceID,
  bool? perhour,
  String? namePERHOUR,
  double? pricePERHOUR,
  String? descriptionPERHOUR,
  bool? persession,
  String? namePERSESSION,
  double? pricePERSESSION,
  String? numberofweeksPERSESSION,
  String? descriptionPERSESSION,
  bool? perprogram,
  String? namePERPROGRAM,
  double? pricePERPROGRAM,
  String? numberofweeksPERPROGRAM,
  int? totalnumberofhoursPERPROGRAM,
  String? descriptionPERPROGRAM,
  int? totalnumberofhoursPERSESSION,
  bool? perproduct,
  String? namePERPRODUCT,
  double? pricePERPRODUCT,
  String? productiontimePERPRODUCT,
  String? descriptionPERPRODUCT,
  DocumentReference? owner,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'serviceID': serviceID,
      'PERHOUR': perhour,
      'namePERHOUR': namePERHOUR,
      'pricePERHOUR': pricePERHOUR,
      'descriptionPERHOUR': descriptionPERHOUR,
      'PERSESSION': persession,
      'namePERSESSION': namePERSESSION,
      'pricePERSESSION': pricePERSESSION,
      'numberofweeksPERSESSION': numberofweeksPERSESSION,
      'descriptionPERSESSION': descriptionPERSESSION,
      'PERPROGRAM': perprogram,
      'namePERPROGRAM': namePERPROGRAM,
      'pricePERPROGRAM': pricePERPROGRAM,
      'numberofweeksPERPROGRAM': numberofweeksPERPROGRAM,
      'totalnumberofhoursPERPROGRAM': totalnumberofhoursPERPROGRAM,
      'descriptionPERPROGRAM': descriptionPERPROGRAM,
      'totalnumberofhoursPERSESSION': totalnumberofhoursPERSESSION,
      'PERPRODUCT': perproduct,
      'namePERPRODUCT': namePERPRODUCT,
      'pricePERPRODUCT': pricePERPRODUCT,
      'productiontimePERPRODUCT': productiontimePERPRODUCT,
      'descriptionPERPRODUCT': descriptionPERPRODUCT,
      'owner': owner,
    }.withoutNulls,
  );

  return firestoreData;
}

class PricingtemplateRecordDocumentEquality
    implements Equality<PricingtemplateRecord> {
  const PricingtemplateRecordDocumentEquality();

  @override
  bool equals(PricingtemplateRecord? e1, PricingtemplateRecord? e2) {
    const listEquality = ListEquality();
    return e1?.serviceID == e2?.serviceID &&
        e1?.perhour == e2?.perhour &&
        e1?.namePERHOUR == e2?.namePERHOUR &&
        e1?.pricePERHOUR == e2?.pricePERHOUR &&
        e1?.descriptionPERHOUR == e2?.descriptionPERHOUR &&
        e1?.persession == e2?.persession &&
        e1?.namePERSESSION == e2?.namePERSESSION &&
        e1?.pricePERSESSION == e2?.pricePERSESSION &&
        e1?.numberofweeksPERSESSION == e2?.numberofweeksPERSESSION &&
        e1?.descriptionPERSESSION == e2?.descriptionPERSESSION &&
        e1?.perprogram == e2?.perprogram &&
        e1?.namePERPROGRAM == e2?.namePERPROGRAM &&
        e1?.pricePERPROGRAM == e2?.pricePERPROGRAM &&
        listEquality.equals(
            e1?.selecteddaysPERPROGRAM, e2?.selecteddaysPERPROGRAM) &&
        e1?.numberofweeksPERPROGRAM == e2?.numberofweeksPERPROGRAM &&
        e1?.totalnumberofhoursPERPROGRAM == e2?.totalnumberofhoursPERPROGRAM &&
        e1?.descriptionPERPROGRAM == e2?.descriptionPERPROGRAM &&
        e1?.totalnumberofhoursPERSESSION == e2?.totalnumberofhoursPERSESSION &&
        e1?.perproduct == e2?.perproduct &&
        e1?.namePERPRODUCT == e2?.namePERPRODUCT &&
        e1?.pricePERPRODUCT == e2?.pricePERPRODUCT &&
        e1?.productiontimePERPRODUCT == e2?.productiontimePERPRODUCT &&
        e1?.descriptionPERPRODUCT == e2?.descriptionPERPRODUCT &&
        e1?.owner == e2?.owner &&
        listEquality.equals(
            e1?.selecteddaysPERSESSION, e2?.selecteddaysPERSESSION) &&
        listEquality.equals(e1?.locationPERHOUR, e2?.locationPERHOUR) &&
        listEquality.equals(e1?.locationPERSESSION, e2?.locationPERSESSION) &&
        listEquality.equals(e1?.locationPERPROGRAM, e2?.locationPERPROGRAM) &&
        listEquality.equals(
            e1?.startingtimePERSESSION, e2?.startingtimePERSESSION) &&
        listEquality.equals(
            e1?.finishingtimePERSESSION, e2?.finishingtimePERSESSION) &&
        listEquality.equals(
            e1?.startingtimePERPROGRAM, e2?.startingtimePERPROGRAM) &&
        listEquality.equals(
            e1?.finishingtimePERPROGRAM, e2?.finishingtimePERPROGRAM) &&
        listEquality.equals(
            e1?.deliverytypePERPRODUCT, e2?.deliverytypePERPRODUCT) &&
        listEquality.equals(e1?.availability, e2?.availability) &&
        listEquality.equals(
            e1?.usersthatareabletoreview, e2?.usersthatareabletoreview);
  }

  @override
  int hash(PricingtemplateRecord? e) => const ListEquality().hash([
        e?.serviceID,
        e?.perhour,
        e?.namePERHOUR,
        e?.pricePERHOUR,
        e?.descriptionPERHOUR,
        e?.persession,
        e?.namePERSESSION,
        e?.pricePERSESSION,
        e?.numberofweeksPERSESSION,
        e?.descriptionPERSESSION,
        e?.perprogram,
        e?.namePERPROGRAM,
        e?.pricePERPROGRAM,
        e?.selecteddaysPERPROGRAM,
        e?.numberofweeksPERPROGRAM,
        e?.totalnumberofhoursPERPROGRAM,
        e?.descriptionPERPROGRAM,
        e?.totalnumberofhoursPERSESSION,
        e?.perproduct,
        e?.namePERPRODUCT,
        e?.pricePERPRODUCT,
        e?.productiontimePERPRODUCT,
        e?.descriptionPERPRODUCT,
        e?.owner,
        e?.selecteddaysPERSESSION,
        e?.locationPERHOUR,
        e?.locationPERSESSION,
        e?.locationPERPROGRAM,
        e?.startingtimePERSESSION,
        e?.finishingtimePERSESSION,
        e?.startingtimePERPROGRAM,
        e?.finishingtimePERPROGRAM,
        e?.deliverytypePERPRODUCT,
        e?.availability,
        e?.usersthatareabletoreview
      ]);

  @override
  bool isValidKey(Object? o) => o is PricingtemplateRecord;
}

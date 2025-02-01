// ignore_for_file: unnecessary_getters_setters
import '/backend/algolia/serialization_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class AvailabilityStruct extends FFFirebaseStruct {
  AvailabilityStruct({
    String? dayofweek,
    DateTime? starttime,
    DateTime? endtime,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _dayofweek = dayofweek,
        _starttime = starttime,
        _endtime = endtime,
        super(firestoreUtilData);

  // "dayofweek" field.
  String? _dayofweek;
  String get dayofweek => _dayofweek ?? '';
  set dayofweek(String? val) => _dayofweek = val;

  bool hasDayofweek() => _dayofweek != null;

  // "starttime" field.
  DateTime? _starttime;
  DateTime? get starttime => _starttime;
  set starttime(DateTime? val) => _starttime = val;

  bool hasStarttime() => _starttime != null;

  // "endtime" field.
  DateTime? _endtime;
  DateTime? get endtime => _endtime;
  set endtime(DateTime? val) => _endtime = val;

  bool hasEndtime() => _endtime != null;

  static AvailabilityStruct fromMap(Map<String, dynamic> data) =>
      AvailabilityStruct(
        dayofweek: data['dayofweek'] as String?,
        starttime: data['starttime'] as DateTime?,
        endtime: data['endtime'] as DateTime?,
      );

  static AvailabilityStruct? maybeFromMap(dynamic data) => data is Map
      ? AvailabilityStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'dayofweek': _dayofweek,
        'starttime': _starttime,
        'endtime': _endtime,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'dayofweek': serializeParam(
          _dayofweek,
          ParamType.String,
        ),
        'starttime': serializeParam(
          _starttime,
          ParamType.DateTime,
        ),
        'endtime': serializeParam(
          _endtime,
          ParamType.DateTime,
        ),
      }.withoutNulls;

  static AvailabilityStruct fromSerializableMap(Map<String, dynamic> data) =>
      AvailabilityStruct(
        dayofweek: deserializeParam(
          data['dayofweek'],
          ParamType.String,
          false,
        ),
        starttime: deserializeParam(
          data['starttime'],
          ParamType.DateTime,
          false,
        ),
        endtime: deserializeParam(
          data['endtime'],
          ParamType.DateTime,
          false,
        ),
      );

  static AvailabilityStruct fromAlgoliaData(Map<String, dynamic> data) =>
      AvailabilityStruct(
        dayofweek: convertAlgoliaParam(
          data['dayofweek'],
          ParamType.String,
          false,
        ),
        starttime: convertAlgoliaParam(
          data['starttime'],
          ParamType.DateTime,
          false,
        ),
        endtime: convertAlgoliaParam(
          data['endtime'],
          ParamType.DateTime,
          false,
        ),
        firestoreUtilData: const FirestoreUtilData(
          clearUnsetFields: false,
          create: true,
        ),
      );

  @override
  String toString() => 'AvailabilityStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AvailabilityStruct &&
        dayofweek == other.dayofweek &&
        starttime == other.starttime &&
        endtime == other.endtime;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([dayofweek, starttime, endtime]);
}

AvailabilityStruct createAvailabilityStruct({
  String? dayofweek,
  DateTime? starttime,
  DateTime? endtime,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    AvailabilityStruct(
      dayofweek: dayofweek,
      starttime: starttime,
      endtime: endtime,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

AvailabilityStruct? updateAvailabilityStruct(
  AvailabilityStruct? availability, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    availability
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addAvailabilityStructData(
  Map<String, dynamic> firestoreData,
  AvailabilityStruct? availability,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (availability == null) {
    return;
  }
  if (availability.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && availability.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final availabilityData =
      getAvailabilityFirestoreData(availability, forFieldValue);
  final nestedData =
      availabilityData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = availability.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getAvailabilityFirestoreData(
  AvailabilityStruct? availability, [
  bool forFieldValue = false,
]) {
  if (availability == null) {
    return {};
  }
  final firestoreData = mapToFirestore(availability.toMap());

  // Add any Firestore field values
  availability.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getAvailabilityListFirestoreData(
  List<AvailabilityStruct>? availabilitys,
) =>
    availabilitys?.map((e) => getAvailabilityFirestoreData(e, true)).toList() ??
    [];

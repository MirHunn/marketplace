// ignore_for_file: unnecessary_getters_setters
import '/backend/algolia/serialization_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MessageStruct extends FFFirebaseStruct {
  MessageStruct({
    String? subject,
    String? html,
    String? text,
    List<AttachmentStruct>? attachments,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _subject = subject,
        _html = html,
        _text = text,
        _attachments = attachments,
        super(firestoreUtilData);

  // "subject" field.
  String? _subject;
  String get subject => _subject ?? '';
  set subject(String? val) => _subject = val;

  bool hasSubject() => _subject != null;

  // "html" field.
  String? _html;
  String get html => _html ?? '';
  set html(String? val) => _html = val;

  bool hasHtml() => _html != null;

  // "text" field.
  String? _text;
  String get text => _text ?? '';
  set text(String? val) => _text = val;

  bool hasText() => _text != null;

  // "attachments" field.
  List<AttachmentStruct>? _attachments;
  List<AttachmentStruct> get attachments => _attachments ?? const [];
  set attachments(List<AttachmentStruct>? val) => _attachments = val;

  void updateAttachments(Function(List<AttachmentStruct>) updateFn) {
    updateFn(_attachments ??= []);
  }

  bool hasAttachments() => _attachments != null;

  static MessageStruct fromMap(Map<String, dynamic> data) => MessageStruct(
        subject: data['subject'] as String?,
        html: data['html'] as String?,
        text: data['text'] as String?,
        attachments: getStructList(
          data['attachments'],
          AttachmentStruct.fromMap,
        ),
      );

  static MessageStruct? maybeFromMap(dynamic data) =>
      data is Map ? MessageStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'subject': _subject,
        'html': _html,
        'text': _text,
        'attachments': _attachments?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'subject': serializeParam(
          _subject,
          ParamType.String,
        ),
        'html': serializeParam(
          _html,
          ParamType.String,
        ),
        'text': serializeParam(
          _text,
          ParamType.String,
        ),
        'attachments': serializeParam(
          _attachments,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static MessageStruct fromSerializableMap(Map<String, dynamic> data) =>
      MessageStruct(
        subject: deserializeParam(
          data['subject'],
          ParamType.String,
          false,
        ),
        html: deserializeParam(
          data['html'],
          ParamType.String,
          false,
        ),
        text: deserializeParam(
          data['text'],
          ParamType.String,
          false,
        ),
        attachments: deserializeStructParam<AttachmentStruct>(
          data['attachments'],
          ParamType.DataStruct,
          true,
          structBuilder: AttachmentStruct.fromSerializableMap,
        ),
      );

  static MessageStruct fromAlgoliaData(Map<String, dynamic> data) =>
      MessageStruct(
        subject: convertAlgoliaParam(
          data['subject'],
          ParamType.String,
          false,
        ),
        html: convertAlgoliaParam(
          data['html'],
          ParamType.String,
          false,
        ),
        text: convertAlgoliaParam(
          data['text'],
          ParamType.String,
          false,
        ),
        attachments: convertAlgoliaParam<AttachmentStruct>(
          data['attachments'],
          ParamType.DataStruct,
          true,
          structBuilder: AttachmentStruct.fromAlgoliaData,
        ),
        firestoreUtilData: const FirestoreUtilData(
          clearUnsetFields: false,
          create: true,
        ),
      );

  @override
  String toString() => 'MessageStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is MessageStruct &&
        subject == other.subject &&
        html == other.html &&
        text == other.text &&
        listEquality.equals(attachments, other.attachments);
  }

  @override
  int get hashCode =>
      const ListEquality().hash([subject, html, text, attachments]);
}

MessageStruct createMessageStruct({
  String? subject,
  String? html,
  String? text,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    MessageStruct(
      subject: subject,
      html: html,
      text: text,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

MessageStruct? updateMessageStruct(
  MessageStruct? message, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    message
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addMessageStructData(
  Map<String, dynamic> firestoreData,
  MessageStruct? message,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (message == null) {
    return;
  }
  if (message.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && message.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final messageData = getMessageFirestoreData(message, forFieldValue);
  final nestedData = messageData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = message.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getMessageFirestoreData(
  MessageStruct? message, [
  bool forFieldValue = false,
]) {
  if (message == null) {
    return {};
  }
  final firestoreData = mapToFirestore(message.toMap());

  // Add any Firestore field values
  message.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getMessageListFirestoreData(
  List<MessageStruct>? messages,
) =>
    messages?.map((e) => getMessageFirestoreData(e, true)).toList() ?? [];

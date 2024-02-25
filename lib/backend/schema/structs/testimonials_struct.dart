// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class TestimonialsStruct extends FFFirebaseStruct {
  TestimonialsStruct({
    String? testimony,
    String? testimonyPerson,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _testimony = testimony,
        _testimonyPerson = testimonyPerson,
        super(firestoreUtilData);

  // "testimony" field.
  String? _testimony;
  String get testimony => _testimony ?? 'This guy knows what he is doing';
  set testimony(String? val) => _testimony = val;
  bool hasTestimony() => _testimony != null;

  // "testimonyPerson" field.
  String? _testimonyPerson;
  String get testimonyPerson => _testimonyPerson ?? 'Neuville Oyato';
  set testimonyPerson(String? val) => _testimonyPerson = val;
  bool hasTestimonyPerson() => _testimonyPerson != null;

  static TestimonialsStruct fromMap(Map<String, dynamic> data) =>
      TestimonialsStruct(
        testimony: data['testimony'] as String?,
        testimonyPerson: data['testimonyPerson'] as String?,
      );

  static TestimonialsStruct? maybeFromMap(dynamic data) => data is Map
      ? TestimonialsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'testimony': _testimony,
        'testimonyPerson': _testimonyPerson,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'testimony': serializeParam(
          _testimony,
          ParamType.String,
        ),
        'testimonyPerson': serializeParam(
          _testimonyPerson,
          ParamType.String,
        ),
      }.withoutNulls;

  static TestimonialsStruct fromSerializableMap(Map<String, dynamic> data) =>
      TestimonialsStruct(
        testimony: deserializeParam(
          data['testimony'],
          ParamType.String,
          false,
        ),
        testimonyPerson: deserializeParam(
          data['testimonyPerson'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'TestimonialsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TestimonialsStruct &&
        testimony == other.testimony &&
        testimonyPerson == other.testimonyPerson;
  }

  @override
  int get hashCode => const ListEquality().hash([testimony, testimonyPerson]);
}

TestimonialsStruct createTestimonialsStruct({
  String? testimony,
  String? testimonyPerson,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    TestimonialsStruct(
      testimony: testimony,
      testimonyPerson: testimonyPerson,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

TestimonialsStruct? updateTestimonialsStruct(
  TestimonialsStruct? testimonials, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    testimonials
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addTestimonialsStructData(
  Map<String, dynamic> firestoreData,
  TestimonialsStruct? testimonials,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (testimonials == null) {
    return;
  }
  if (testimonials.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && testimonials.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final testimonialsData =
      getTestimonialsFirestoreData(testimonials, forFieldValue);
  final nestedData =
      testimonialsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = testimonials.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getTestimonialsFirestoreData(
  TestimonialsStruct? testimonials, [
  bool forFieldValue = false,
]) {
  if (testimonials == null) {
    return {};
  }
  final firestoreData = mapToFirestore(testimonials.toMap());

  // Add any Firestore field values
  testimonials.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getTestimonialsListFirestoreData(
  List<TestimonialsStruct>? testimonialss,
) =>
    testimonialss?.map((e) => getTestimonialsFirestoreData(e, true)).toList() ??
    [];

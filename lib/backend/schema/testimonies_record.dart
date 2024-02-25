import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class TestimoniesRecord extends FirestoreRecord {
  TestimoniesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "testimony" field.
  String? _testimony;
  String get testimony => _testimony ?? '';
  bool hasTestimony() => _testimony != null;

  // "testimonyPerson" field.
  String? _testimonyPerson;
  String get testimonyPerson => _testimonyPerson ?? '';
  bool hasTestimonyPerson() => _testimonyPerson != null;

  void _initializeFields() {
    _testimony = snapshotData['testimony'] as String?;
    _testimonyPerson = snapshotData['testimonyPerson'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Testimonies');

  static Stream<TestimoniesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TestimoniesRecord.fromSnapshot(s));

  static Future<TestimoniesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TestimoniesRecord.fromSnapshot(s));

  static TestimoniesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TestimoniesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TestimoniesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TestimoniesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TestimoniesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TestimoniesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTestimoniesRecordData({
  String? testimony,
  String? testimonyPerson,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'testimony': testimony,
      'testimonyPerson': testimonyPerson,
    }.withoutNulls,
  );

  return firestoreData;
}

class TestimoniesRecordDocumentEquality implements Equality<TestimoniesRecord> {
  const TestimoniesRecordDocumentEquality();

  @override
  bool equals(TestimoniesRecord? e1, TestimoniesRecord? e2) {
    return e1?.testimony == e2?.testimony &&
        e1?.testimonyPerson == e2?.testimonyPerson;
  }

  @override
  int hash(TestimoniesRecord? e) =>
      const ListEquality().hash([e?.testimony, e?.testimonyPerson]);

  @override
  bool isValidKey(Object? o) => o is TestimoniesRecord;
}

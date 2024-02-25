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

  // "Testimonies" field.
  List<TestimonialsStruct>? _testimonies;
  List<TestimonialsStruct> get testimonies => _testimonies ?? const [];
  bool hasTestimonies() => _testimonies != null;

  // "PriceList" field.
  List<PriceListsStruct>? _priceList;
  List<PriceListsStruct> get priceList => _priceList ?? const [];
  bool hasPriceList() => _priceList != null;

  void _initializeFields() {
    _testimonies = getStructList(
      snapshotData['Testimonies'],
      TestimonialsStruct.fromMap,
    );
    _priceList = getStructList(
      snapshotData['PriceList'],
      PriceListsStruct.fromMap,
    );
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

Map<String, dynamic> createTestimoniesRecordData() {
  final firestoreData = mapToFirestore(
    <String, dynamic>{}.withoutNulls,
  );

  return firestoreData;
}

class TestimoniesRecordDocumentEquality implements Equality<TestimoniesRecord> {
  const TestimoniesRecordDocumentEquality();

  @override
  bool equals(TestimoniesRecord? e1, TestimoniesRecord? e2) {
    const listEquality = ListEquality();
    return listEquality.equals(e1?.testimonies, e2?.testimonies) &&
        listEquality.equals(e1?.priceList, e2?.priceList);
  }

  @override
  int hash(TestimoniesRecord? e) =>
      const ListEquality().hash([e?.testimonies, e?.priceList]);

  @override
  bool isValidKey(Object? o) => o is TestimoniesRecord;
}

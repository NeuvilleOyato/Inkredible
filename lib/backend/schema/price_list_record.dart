import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PriceListRecord extends FirestoreRecord {
  PriceListRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "itemName" field.
  String? _itemName;
  String get itemName => _itemName ?? '';
  bool hasItemName() => _itemName != null;

  // "price" field.
  int? _price;
  int get price => _price ?? 0;
  bool hasPrice() => _price != null;

  void _initializeFields() {
    _itemName = snapshotData['itemName'] as String?;
    _price = castToType<int>(snapshotData['price']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('PriceList');

  static Stream<PriceListRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PriceListRecord.fromSnapshot(s));

  static Future<PriceListRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PriceListRecord.fromSnapshot(s));

  static PriceListRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PriceListRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PriceListRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PriceListRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PriceListRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PriceListRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPriceListRecordData({
  String? itemName,
  int? price,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'itemName': itemName,
      'price': price,
    }.withoutNulls,
  );

  return firestoreData;
}

class PriceListRecordDocumentEquality implements Equality<PriceListRecord> {
  const PriceListRecordDocumentEquality();

  @override
  bool equals(PriceListRecord? e1, PriceListRecord? e2) {
    return e1?.itemName == e2?.itemName && e1?.price == e2?.price;
  }

  @override
  int hash(PriceListRecord? e) =>
      const ListEquality().hash([e?.itemName, e?.price]);

  @override
  bool isValidKey(Object? o) => o is PriceListRecord;
}

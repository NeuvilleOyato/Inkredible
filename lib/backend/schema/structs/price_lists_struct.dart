// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class PriceListsStruct extends FFFirebaseStruct {
  PriceListsStruct({
    String? item,
    String? price,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _item = item,
        _price = price,
        super(firestoreUtilData);

  // "Item" field.
  String? _item;
  String get item => _item ?? '';
  set item(String? val) => _item = val;
  bool hasItem() => _item != null;

  // "Price" field.
  String? _price;
  String get price => _price ?? '';
  set price(String? val) => _price = val;
  bool hasPrice() => _price != null;

  static PriceListsStruct fromMap(Map<String, dynamic> data) =>
      PriceListsStruct(
        item: data['Item'] as String?,
        price: data['Price'] as String?,
      );

  static PriceListsStruct? maybeFromMap(dynamic data) => data is Map
      ? PriceListsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'Item': _item,
        'Price': _price,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'Item': serializeParam(
          _item,
          ParamType.String,
        ),
        'Price': serializeParam(
          _price,
          ParamType.String,
        ),
      }.withoutNulls;

  static PriceListsStruct fromSerializableMap(Map<String, dynamic> data) =>
      PriceListsStruct(
        item: deserializeParam(
          data['Item'],
          ParamType.String,
          false,
        ),
        price: deserializeParam(
          data['Price'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'PriceListsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PriceListsStruct &&
        item == other.item &&
        price == other.price;
  }

  @override
  int get hashCode => const ListEquality().hash([item, price]);
}

PriceListsStruct createPriceListsStruct({
  String? item,
  String? price,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    PriceListsStruct(
      item: item,
      price: price,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

PriceListsStruct? updatePriceListsStruct(
  PriceListsStruct? priceLists, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    priceLists
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addPriceListsStructData(
  Map<String, dynamic> firestoreData,
  PriceListsStruct? priceLists,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (priceLists == null) {
    return;
  }
  if (priceLists.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && priceLists.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final priceListsData = getPriceListsFirestoreData(priceLists, forFieldValue);
  final nestedData = priceListsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = priceLists.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getPriceListsFirestoreData(
  PriceListsStruct? priceLists, [
  bool forFieldValue = false,
]) {
  if (priceLists == null) {
    return {};
  }
  final firestoreData = mapToFirestore(priceLists.toMap());

  // Add any Firestore field values
  priceLists.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getPriceListsListFirestoreData(
  List<PriceListsStruct>? priceListss,
) =>
    priceListss?.map((e) => getPriceListsFirestoreData(e, true)).toList() ?? [];

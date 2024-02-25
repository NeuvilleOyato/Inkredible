import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  List<TestimonialsStruct> _listOfTestimony = [
    TestimonialsStruct.fromSerializableMap(jsonDecode(
        '{"testimony":"This guy does a very professional job...Cant wait to get me  another one","testimonyPerson":"Neuville Oyato"}'))
  ];
  List<TestimonialsStruct> get listOfTestimony => _listOfTestimony;
  set listOfTestimony(List<TestimonialsStruct> value) {
    _listOfTestimony = value;
  }

  void addToListOfTestimony(TestimonialsStruct value) {
    _listOfTestimony.add(value);
  }

  void removeFromListOfTestimony(TestimonialsStruct value) {
    _listOfTestimony.remove(value);
  }

  void removeAtIndexFromListOfTestimony(int index) {
    _listOfTestimony.removeAt(index);
  }

  void updateListOfTestimonyAtIndex(
    int index,
    TestimonialsStruct Function(TestimonialsStruct) updateFn,
  ) {
    _listOfTestimony[index] = updateFn(_listOfTestimony[index]);
  }

  void insertAtIndexInListOfTestimony(int index, TestimonialsStruct value) {
    _listOfTestimony.insert(index, value);
  }

  List<PriceListsStruct> _listOfItems = [
    PriceListsStruct.fromSerializableMap(
        jsonDecode('{"Item":"Tattoo","Price":"1000"}')),
    PriceListsStruct.fromSerializableMap(
        jsonDecode('{"Item":"Shading","Price":"2000"}')),
    PriceListsStruct.fromSerializableMap(
        jsonDecode('{"Item":"Septum Piercing","Price":"400"}')),
    PriceListsStruct.fromSerializableMap(
        jsonDecode('{"Item":"Laser Removal","Price":"4000"}')),
    PriceListsStruct.fromSerializableMap(
        jsonDecode('{"Item":"Tattoo Cover Up","Price":"1000"}'))
  ];
  List<PriceListsStruct> get listOfItems => _listOfItems;
  set listOfItems(List<PriceListsStruct> value) {
    _listOfItems = value;
  }

  void addToListOfItems(PriceListsStruct value) {
    _listOfItems.add(value);
  }

  void removeFromListOfItems(PriceListsStruct value) {
    _listOfItems.remove(value);
  }

  void removeAtIndexFromListOfItems(int index) {
    _listOfItems.removeAt(index);
  }

  void updateListOfItemsAtIndex(
    int index,
    PriceListsStruct Function(PriceListsStruct) updateFn,
  ) {
    _listOfItems[index] = updateFn(_listOfItems[index]);
  }

  void insertAtIndexInListOfItems(int index, PriceListsStruct value) {
    _listOfItems.insert(index, value);
  }
}

import 'package:flutter/material.dart';
import '/backend/backend.dart';
import 'package:shared_preferences/shared_preferences.dart';
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

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _myCart =
          prefs.getStringList('ff_myCart')?.map((path) => path.ref).toList() ??
              _myCart;
    });
    _safeInit(() {
      _myCartSummary =
          prefs.getStringList('ff_myCartSummary')?.map(double.parse).toList() ??
              _myCartSummary;
    });
    _safeInit(() {
      _pricingtemplateID =
          prefs.getStringList('ff_pricingtemplateID') ?? _pricingtemplateID;
    });
    _safeInit(() {
      _owner = prefs.getStringList('ff_owner') ?? _owner;
    });
    _safeInit(() {
      _serviceID = prefs.getString('ff_serviceID') ?? _serviceID;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  List<DocumentReference> _myCart = [];
  List<DocumentReference> get myCart => _myCart;
  set myCart(List<DocumentReference> value) {
    _myCart = value;
    prefs.setStringList('ff_myCart', value.map((x) => x.path).toList());
  }

  void addToMyCart(DocumentReference value) {
    myCart.add(value);
    prefs.setStringList('ff_myCart', _myCart.map((x) => x.path).toList());
  }

  void removeFromMyCart(DocumentReference value) {
    myCart.remove(value);
    prefs.setStringList('ff_myCart', _myCart.map((x) => x.path).toList());
  }

  void removeAtIndexFromMyCart(int index) {
    myCart.removeAt(index);
    prefs.setStringList('ff_myCart', _myCart.map((x) => x.path).toList());
  }

  void updateMyCartAtIndex(
    int index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    myCart[index] = updateFn(_myCart[index]);
    prefs.setStringList('ff_myCart', _myCart.map((x) => x.path).toList());
  }

  void insertAtIndexInMyCart(int index, DocumentReference value) {
    myCart.insert(index, value);
    prefs.setStringList('ff_myCart', _myCart.map((x) => x.path).toList());
  }

  List<double> _myCartSummary = [];
  List<double> get myCartSummary => _myCartSummary;
  set myCartSummary(List<double> value) {
    _myCartSummary = value;
    prefs.setStringList(
        'ff_myCartSummary', value.map((x) => x.toString()).toList());
  }

  void addToMyCartSummary(double value) {
    myCartSummary.add(value);
    prefs.setStringList(
        'ff_myCartSummary', _myCartSummary.map((x) => x.toString()).toList());
  }

  void removeFromMyCartSummary(double value) {
    myCartSummary.remove(value);
    prefs.setStringList(
        'ff_myCartSummary', _myCartSummary.map((x) => x.toString()).toList());
  }

  void removeAtIndexFromMyCartSummary(int index) {
    myCartSummary.removeAt(index);
    prefs.setStringList(
        'ff_myCartSummary', _myCartSummary.map((x) => x.toString()).toList());
  }

  void updateMyCartSummaryAtIndex(
    int index,
    double Function(double) updateFn,
  ) {
    myCartSummary[index] = updateFn(_myCartSummary[index]);
    prefs.setStringList(
        'ff_myCartSummary', _myCartSummary.map((x) => x.toString()).toList());
  }

  void insertAtIndexInMyCartSummary(int index, double value) {
    myCartSummary.insert(index, value);
    prefs.setStringList(
        'ff_myCartSummary', _myCartSummary.map((x) => x.toString()).toList());
  }

  List<AvailabilityStruct> _availability = [];
  List<AvailabilityStruct> get availability => _availability;
  set availability(List<AvailabilityStruct> value) {
    _availability = value;
  }

  void addToAvailability(AvailabilityStruct value) {
    availability.add(value);
  }

  void removeFromAvailability(AvailabilityStruct value) {
    availability.remove(value);
  }

  void removeAtIndexFromAvailability(int index) {
    availability.removeAt(index);
  }

  void updateAvailabilityAtIndex(
    int index,
    AvailabilityStruct Function(AvailabilityStruct) updateFn,
  ) {
    availability[index] = updateFn(_availability[index]);
  }

  void insertAtIndexInAvailability(int index, AvailabilityStruct value) {
    availability.insert(index, value);
  }

  List<String> _pricingtemplateID = [];
  List<String> get pricingtemplateID => _pricingtemplateID;
  set pricingtemplateID(List<String> value) {
    _pricingtemplateID = value;
    prefs.setStringList('ff_pricingtemplateID', value);
  }

  void addToPricingtemplateID(String value) {
    pricingtemplateID.add(value);
    prefs.setStringList('ff_pricingtemplateID', _pricingtemplateID);
  }

  void removeFromPricingtemplateID(String value) {
    pricingtemplateID.remove(value);
    prefs.setStringList('ff_pricingtemplateID', _pricingtemplateID);
  }

  void removeAtIndexFromPricingtemplateID(int index) {
    pricingtemplateID.removeAt(index);
    prefs.setStringList('ff_pricingtemplateID', _pricingtemplateID);
  }

  void updatePricingtemplateIDAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    pricingtemplateID[index] = updateFn(_pricingtemplateID[index]);
    prefs.setStringList('ff_pricingtemplateID', _pricingtemplateID);
  }

  void insertAtIndexInPricingtemplateID(int index, String value) {
    pricingtemplateID.insert(index, value);
    prefs.setStringList('ff_pricingtemplateID', _pricingtemplateID);
  }

  List<String> _owner = [];
  List<String> get owner => _owner;
  set owner(List<String> value) {
    _owner = value;
    prefs.setStringList('ff_owner', value);
  }

  void addToOwner(String value) {
    owner.add(value);
    prefs.setStringList('ff_owner', _owner);
  }

  void removeFromOwner(String value) {
    owner.remove(value);
    prefs.setStringList('ff_owner', _owner);
  }

  void removeAtIndexFromOwner(int index) {
    owner.removeAt(index);
    prefs.setStringList('ff_owner', _owner);
  }

  void updateOwnerAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    owner[index] = updateFn(_owner[index]);
    prefs.setStringList('ff_owner', _owner);
  }

  void insertAtIndexInOwner(int index, String value) {
    owner.insert(index, value);
    prefs.setStringList('ff_owner', _owner);
  }

  String _serviceID = '';
  String get serviceID => _serviceID;
  set serviceID(String value) {
    _serviceID = value;
    prefs.setString('ff_serviceID', value);
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}

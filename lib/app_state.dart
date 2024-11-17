import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:csv/csv.dart';
import 'package:synchronized/synchronized.dart';

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
    secureStorage = const FlutterSecureStorage();
    await _safeInitAsync(() async {
      _emailSignIn =
          await secureStorage.getString('ff_emailSignIn') ?? _emailSignIn;
    });
    await _safeInitAsync(() async {
      _categories =
          await secureStorage.getString('ff_categories') ?? _categories;
    });
    await _safeInitAsync(() async {
      _profilePic =
          await secureStorage.getString('ff_profilePic') ?? _profilePic;
    });
    await _safeInitAsync(() async {
      _totalPrice =
          await secureStorage.getDouble('ff_totalPrice') ?? _totalPrice;
    });
    await _safeInitAsync(() async {
      _grandTotal =
          await secureStorage.getDouble('ff_grandTotal') ?? _grandTotal;
    });
    await _safeInitAsync(() async {
      _displayName =
          await secureStorage.getString('ff_displayName') ?? _displayName;
    });
    await _safeInitAsync(() async {
      _genders = await secureStorage.getString('ff_genders') ?? _genders;
    });
    await _safeInitAsync(() async {
      _sortby = await secureStorage.getString('ff_sortby') ?? _sortby;
    });
    await _safeInitAsync(() async {
      _address = await secureStorage.getString('ff_address') ?? _address;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late FlutterSecureStorage secureStorage;

  String _emailSignIn = '';
  String get emailSignIn => _emailSignIn;
  set emailSignIn(String value) {
    _emailSignIn = value;
    secureStorage.setString('ff_emailSignIn', value);
  }

  void deleteEmailSignIn() {
    secureStorage.delete(key: 'ff_emailSignIn');
  }

  bool _profile = false;
  bool get profile => _profile;
  set profile(bool value) {
    _profile = value;
  }

  bool _home = true;
  bool get home => _home;
  set home(bool value) {
    _home = value;
  }

  bool _notification = false;
  bool get notification => _notification;
  set notification(bool value) {
    _notification = value;
  }

  bool _orders = false;
  bool get orders => _orders;
  set orders(bool value) {
    _orders = value;
  }

  String _categories = '';
  String get categories => _categories;
  set categories(String value) {
    _categories = value;
    secureStorage.setString('ff_categories', value);
  }

  void deleteCategories() {
    secureStorage.delete(key: 'ff_categories');
  }

  String _profilePic = '';
  String get profilePic => _profilePic;
  set profilePic(String value) {
    _profilePic = value;
    secureStorage.setString('ff_profilePic', value);
  }

  void deleteProfilePic() {
    secureStorage.delete(key: 'ff_profilePic');
  }

  double _totalPrice = 0.0;
  double get totalPrice => _totalPrice;
  set totalPrice(double value) {
    _totalPrice = value;
    secureStorage.setDouble('ff_totalPrice', value);
  }

  void deleteTotalPrice() {
    secureStorage.delete(key: 'ff_totalPrice');
  }

  double _grandTotal = 0.0;
  double get grandTotal => _grandTotal;
  set grandTotal(double value) {
    _grandTotal = value;
    secureStorage.setDouble('ff_grandTotal', value);
  }

  void deleteGrandTotal() {
    secureStorage.delete(key: 'ff_grandTotal');
  }

  int _totalItems = 0;
  int get totalItems => _totalItems;
  set totalItems(int value) {
    _totalItems = value;
  }

  String _displayName = '';
  String get displayName => _displayName;
  set displayName(String value) {
    _displayName = value;
    secureStorage.setString('ff_displayName', value);
  }

  void deleteDisplayName() {
    secureStorage.delete(key: 'ff_displayName');
  }

  bool _isSearched = false;
  bool get isSearched => _isSearched;
  set isSearched(bool value) {
    _isSearched = value;
  }

  String _deals = '';
  String get deals => _deals;
  set deals(String value) {
    _deals = value;
  }

  String _genders = '';
  String get genders => _genders;
  set genders(String value) {
    _genders = value;
    secureStorage.setString('ff_genders', value);
  }

  void deleteGenders() {
    secureStorage.delete(key: 'ff_genders');
  }

  String _sortby = '';
  String get sortby => _sortby;
  set sortby(String value) {
    _sortby = value;
    secureStorage.setString('ff_sortby', value);
  }

  void deleteSortby() {
    secureStorage.delete(key: 'ff_sortby');
  }

  String _price = '';
  String get price => _price;
  set price(String value) {
    _price = value;
  }

  String _address = '';
  String get address => _address;
  set address(String value) {
    _address = value;
    secureStorage.setString('ff_address', value);
  }

  void deleteAddress() {
    secureStorage.delete(key: 'ff_address');
  }

  int _filter = 0;
  int get filter => _filter;
  set filter(int value) {
    _filter = value;
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

extension FlutterSecureStorageExtensions on FlutterSecureStorage {
  static final _lock = Lock();

  Future<void> writeSync({required String key, String? value}) async =>
      await _lock.synchronized(() async {
        await write(key: key, value: value);
      });

  void remove(String key) => delete(key: key);

  Future<String?> getString(String key) async => await read(key: key);
  Future<void> setString(String key, String value) async =>
      await writeSync(key: key, value: value);

  Future<bool?> getBool(String key) async => (await read(key: key)) == 'true';
  Future<void> setBool(String key, bool value) async =>
      await writeSync(key: key, value: value.toString());

  Future<int?> getInt(String key) async =>
      int.tryParse(await read(key: key) ?? '');
  Future<void> setInt(String key, int value) async =>
      await writeSync(key: key, value: value.toString());

  Future<double?> getDouble(String key) async =>
      double.tryParse(await read(key: key) ?? '');
  Future<void> setDouble(String key, double value) async =>
      await writeSync(key: key, value: value.toString());

  Future<List<String>?> getStringList(String key) async =>
      await read(key: key).then((result) {
        if (result == null || result.isEmpty) {
          return null;
        }
        return const CsvToListConverter()
            .convert(result)
            .first
            .map((e) => e.toString())
            .toList();
      });
  Future<void> setStringList(String key, List<String> value) async =>
      await writeSync(key: key, value: const ListToCsvConverter().convert([value]));
}

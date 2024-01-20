import 'package:get_storage/get_storage.dart';

class KLocalStorage {

  static final KLocalStorage _instance = KLocalStorage._internal();

  factory KLocalStorage() {
    return _instance;
  }

  KLocalStorage._internal();

  final _storage = GetStorage();

  // Generic method to save data
Future<void> saveData<K>(String key, K value) async {
  await _storage.write(key, value);
}

// Generic method to read data
K? readData<K>(String key) {
  return _storage.read<K>(key);
}

// Generic method to remove data
Future<void> removeData(String key) async{
  await _storage.remove(key);
}

// Clear all data in storage
Future<void> clearAll() async {
  await _storage.erase();
}



}
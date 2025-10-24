
import 'package:get_storage/get_storage.dart';

class MLocalStorage {

  late final GetStorage _storage;

  ///Singleton instance
  static MLocalStorage? _instance;

  MLocalStorage._internal();

  factory MLocalStorage.instance(){
    _instance ??= MLocalStorage._internal();
    return _instance!;
  }

  static Future<void> init(String bucketName) async {
    await GetStorage.init(bucketName);
    _instance = MLocalStorage._internal();
    _instance!._storage = GetStorage(bucketName);
  }

  //Generic Method to save data
  Future<void> saveData<T>(String key, T value) async {
    await _storage.write(key, value);
  }

  //Generic Method to read data
  T? readData<T>(String key) {
    return _storage.read<T>(key);
  }

  //Generic Method to remove data
  Future<void> removeData<T>(String key) async {
    await _storage.remove(key);
  }

  //Clear all Data in Storage
  Future<void> clearAll<T>() async {
    await _storage.erase();
  }
}
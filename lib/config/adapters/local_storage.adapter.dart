import 'package:get_storage/get_storage.dart';

class LocalStorageAdapter {
  
  static Future init() async {
    await GetStorage.init();
  }

  static Future<void> save(String key, dynamic value) async {
    final box = GetStorage();
    await box.write(key, value);
  }

  static T? read<T>(String key) {
    final box = GetStorage();
    return box.read(key);
  }
}

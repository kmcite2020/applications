import 'package:hive_flutter/hive_flutter.dart';
import 'package:manager/manager.dart';
import 'package:package_info_plus/package_info_plus.dart';

class HiveStorage implements IPersistStore {
  @override
  Future<void> delete(String key) => storage.delete(key);

  @override
  Future<void> deleteAll() => storage.clear();

  @override
  Future<void> init() async {
    final info = await PackageInfo.fromPlatform();
    await Hive.initFlutter();
    storage = await Hive.openBox(info.appName);
  }

  @override
  Object? read(String key) => storage.get(key);

  @override
  Future<void> write<T>(String key, T value) => storage.put(key, value);
}

import 'package:hive_flutter/hive_flutter.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

class HiveStorage implements IPersistStore {
  late Box box;
  @override
  Future<void> delete(String key) => box.delete(key);

  @override
  Future<void> deleteAll() => box.clear();

  @override
  Future<void> init() async {
    await Hive.initFlutter();
    final info = await PackageInfo.fromPlatform();
    box = await Hive.openBox(info.appName);
  }

  @override
  Object? read(String key) => box.get(key);

  @override
  Future<void> write<T>(String key, T value) => box.put(key, value);
}

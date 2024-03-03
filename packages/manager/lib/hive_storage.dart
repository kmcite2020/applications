part of 'manager.dart';

class HiveStorage implements rebuilder.IPersistStore {
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

import '../../main.dart';

class HiveStorage implements IPersistStore {
  late Box _box;
  @override
  Future<void> init() async {
    await Hive.initFlutter();
    _box = await Hive.openBox('patients');
  }

  @override
  Object? read(String key) => _box.get(key);

  @override
  Future<void> write<T>(String key, T value) => _box.put(key, value as String);

  @override
  Future<void> delete(String key) => _box.delete(key);

  @override
  Future<void> deleteAll() => _box.clear();
}

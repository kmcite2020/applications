import 'package:states_rebuilder/states_rebuilder.dart';
import 'package:hive_flutter/hive_flutter.dart';

class HiveStorage implements IPersistStore {
  late Box _box;
  @override
  Future<void> delete(String key) => _box.delete(key);

  @override
  Future<void> deleteAll() => _box.clear();

  @override
  Future<void> init() async {
    await Hive.initFlutter();
    _box = await Hive.openBox('dermatosis');
  }

  @override
  Object? read(String key) => _box.get(key);

  @override
  Future<void> write<T>(String key, T value) => _box.put(key, value);
}

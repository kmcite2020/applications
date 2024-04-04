import 'package:states_rebuilder/states_rebuilder.dart';
import 'package:hive_flutter/hive_flutter.dart';

class HiveStorage implements IPersistStore {
  late Box _prefs;

  @override
  Future<void> init() async {
    await Hive.initFlutter();
    _prefs = await Hive.openBox('doctor_on_duty');
  }

  @override
  Object? read(String key) => _prefs.get(key);

  @override
  Future<void> write<T>(String key, T value) async =>
      await _prefs.put(key, value as String);

  @override
  Future<void> delete(String key) async => await _prefs.delete(key);

  @override
  Future<void> deleteAll() async => await _prefs.clear();
}

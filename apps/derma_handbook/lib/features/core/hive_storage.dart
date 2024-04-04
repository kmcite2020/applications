import 'package:states_rebuilder/states_rebuilder.dart';
import 'package:hive/hive.dart';

class HiveStorage implements IPersistStore {
  late Box box;

  @override
  Future<void> init() async => box = Hive.box(name: 'rx_derma');

  @override
  Object? read(String key) => box.get(key);

  @override
  Future<void> write<T>(String key, T value) async => box.put(key, value);

  @override
  Future<void> delete(String key) async => box.delete(key);

  @override
  Future<void> deleteAll() async => box.clear();
}

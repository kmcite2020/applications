import 'package:manager/manager.dart';

class HiveStorage implements IPersistStore {
  late Box box;
  @override
  Future<void> delete(String key) async => await box.delete(key);

  @override
  Future<void> deleteAll() async => await box.clear();

  @override
  Future<void> init() async {
    final info = await PackageInfo.fromPlatform();
    await Hive.initFlutter();
    box = await Hive.openBox(info.appName);
  }

  @override
  Object? read(String key) => box.get(key);

  @override
  Future<void> write<T>(String key, T value) async => await box.put(key, value);
}

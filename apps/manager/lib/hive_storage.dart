part of 'manager.dart';

class HiveStorage implements IPersistStore {
  late Box box;
  @override
  Future<void> delete(String key) async => box.delete(key);

  @override
  Future<void> deleteAll() async => box.clear();

  @override
  Future<void> init() async {
    Hive.defaultDirectory = (await getApplicationDocumentsDirectory()).path;
    final info = await PackageInfo.fromPlatform();
    box = Hive.box(
      name: info.appName,
    );
  }

  @override
  Object? read(String key) => box.get(key);

  @override
  Future<void> write<T>(String key, T value) async => box.put(key, value);
}

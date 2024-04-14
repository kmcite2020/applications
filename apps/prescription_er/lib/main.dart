export 'package:prescription_er/patients_list.dart';

import 'main.dart';
export 'package:manager/manager.dart';

void main() async {
  await RM.storageInitializer(HiveStorage());
  // await RM.deleteAllPersistState();
  storage.clear();
  runApp(App());
}

class App extends TopUI {
  @override
  Widget? splashScreen() => CircularProgressIndicator().center();
  Widget homePage(BuildContext context) => PatientsListPage();
}

class HiveStorage implements IPersistStore {
  @override
  Future<void> delete(String key) => storage.delete(key);

  @override
  Future<void> deleteAll() => storage.clear();

  @override
  Future<void> init() async {}

  @override
  Object? read(String key) => storage.get(key);

  @override
  Future<void> write<T>(String key, T value) => storage.put(key, value);
}

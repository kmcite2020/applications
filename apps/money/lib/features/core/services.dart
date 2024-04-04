import '../../main.dart';

List<String> get fonts {
  return [
    "Default",
    "Azeret Mono",
    "Comfortaa",
    "DM Mono",
    "Dosis",
    "Fira Sans",
    "IBM Plex Mono",
    "Josefin Sans",
    "Montserrat",
    "Space Mono",
    "Ubuntu",
  ];
}

SizedBox spacing([
  double? width,
  double? height,
]) =>
    SizedBox(
      width: width,
      height: height,
    );

String get randomID => const Uuid().v4();

extension ObjectExtensions on Object? {
  Text text({
    TextStyle? style,
    double? textScaleFactor,
  }) {
    return Text(
      toString(),
      style: style,
      // ignore: deprecated_member_use
      textScaleFactor: textScaleFactor,
    );
  }
}

extension WidgetExtensions on Widget {
  Widget pad({
    EdgeInsetsGeometry? customPadding,
  }) {
    return Padding(
      padding: customPadding ?? EdgeInsets.all(padding),
      child: this,
    );
  }

  Card card() => Card(child: this);
  Center center() => Center(child: this);
}

class HiveStorage implements IPersistStore {
  late Box _box;

  @override
  Future<void> init() async {
    await Hive.initFlutter();
    _box = await Hive.openBox('money');
  }

  @override
  Object? read(String key) {
    return _box.get(key);
  }

  @override
  Future<void> write<T>(String key, T value) async {
    await _box.put(key, value as String);
  }

  @override
  Future<void> delete(String key) async {
    await _box.delete(key);
  }

  @override
  Future<void> deleteAll() async {
    await _box.clear();
  }
}

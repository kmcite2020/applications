import 'manager.dart';

class Serializer<T> {
  final String key;
  final FromJson<T> fromJson;
  const Serializer({
    required this.key,
    required this.fromJson,
  });
}

typedef MapSerializer<K, V> = ({
  String name,
  K Function(Map<String, dynamic> json) key,
  V Function(Map<String, dynamic> json) value,
});

typedef FromJson<T> = T Function(Map<String, dynamic> json);

class MaterialColorConverter implements JsonConverter<MaterialColor, int> {
  const MaterialColorConverter();

  @override
  MaterialColor fromJson(int json) => Colors.primaries[json];

  @override
  int toJson(MaterialColor object) => Colors.primaries.indexOf(object);
}

class Uint8ListConverter implements JsonConverter<Uint8List, String> {
  const Uint8ListConverter();

  @override
  Uint8List fromJson(String json) => base64Decode(json);

  @override
  String toJson(Uint8List object) => base64Encode(object);
}

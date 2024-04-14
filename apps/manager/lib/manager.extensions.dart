part of 'manager.dart';

extension CapitalizerX on String {
  String get capitalizer {
    final firstChar = this[0];
    return firstChar.toUpperCase() + this.substring(1);
  }
}

extension DynamicExtensions on dynamic {
  Widget text({
    double? textScaleFactor,
    TextStyle? style,
  }) {
    return Text(
      toString(),
      style: style,
      textScaler: TextScaler.linear(textScaleFactor ?? 1),
    );
  }
}

extension WidgetExtensions on Widget {
  Widget pad({EdgeInsets? custom}) {
    return Padding(
      padding: custom ?? const EdgeInsets.all(8.0),
      child: this,
    );
  }

  Widget center() => Center(child: this);
  Widget card() => Card(child: this);
}

extension DateTimeExtensions on DateTime {
  String time() => '';
  String date() {
    return "$day/$month/$year";
  }

  String get day => this.day.toString();
  String get month => this.month.toString();
  String get year => this.year.toString();
}

String get randomID => const Uuid().v4();

class MaterialColorConverter implements JsonConverter<MaterialColor, int> {
  const MaterialColorConverter();

  @override
  MaterialColor fromJson(int json) => Colors.primaries[json];

  @override
  int toJson(MaterialColor object) => Colors.primaries.indexOf(object);
}

class Uint8ListConvertor implements JsonConverter<Uint8List, String> {
  const Uint8ListConvertor();

  @override
  Uint8List fromJson(String json) => base64Decode(json);

  @override
  String toJson(Uint8List object) => base64Encode(object);
}

abstract class ID {
  const ID();
  String get id;
}

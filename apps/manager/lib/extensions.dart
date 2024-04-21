import 'manager.dart';

extension DynamicExtensions on dynamic {
  Widget text({
    double? textScaleFactor,
    TextStyle? style,
  }) =>
      Text(
        toString(),
        textScaler: TextScaler.linear(textScaleFactor ?? 1),
        style: style,
      );
}

extension WidgetExtensions on Widget {
  Widget pad({EdgeInsetsGeometry? custom}) => Padding(
        padding: custom ?? const EdgeInsets.all(8),
        child: this,
      );
  Widget center() => Center(child: this);
  Card card() => Card(child: this);
}

extension ComplexExtensionsBool on Simple<bool> {
  void toggle() => call(!call());
}

extension Stringify on String {
  static String fromJson(Map<String, dynamic> json) {
    return json['data'] ?? '';
  }

  Map<String, dynamic> toJson() => {'data': this};
}

String get randomID => const Uuid().v8();

import 'manager.dart';

extension DynamicExtensions on dynamic {
  Widget text({
    double? textScaleFactor,
  }) =>
      Text(
        toString(),
        textScaler: TextScaler.linear(textScaleFactor ?? 0),
      );
}

extension WidgetExtensions on Widget {
  Widget pad({EdgeInsetsGeometry? custom}) => Padding(
        padding: custom ?? EdgeInsets.all(8),
        child: this,
      );
  Widget center() => Center(child: this);
  Card card() => Card(child: this);
}

extension ComplexExtensionsBool on Simple<bool> {
  void toggle() => injected.state = !injected.state;
}

String get randomID => Uuid().v8();

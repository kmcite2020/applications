import 'manager.dart';

extension DynamicExtensions on dynamic {
  Widget text({
    double? textScaleFactor,
    TextStyle? style,
  }) =>
      Text(
        toString(),
        style: style,
        textScaler: TextScaler.linear(textScaleFactor ?? 1),
      );

  bool get isNull => this == null;
  bool get isNotNull => !isNull;
}

extension WidgetExtensions on Widget {
  Widget pad({EdgeInsets? customPad}) {
    return Padding(
      padding: customPad ?? const EdgeInsets.all(8.0),
      child: this,
    );
  }

  Widget center() => Center(child: this);
}

extension DateTimeExtensions on DateTime {
  String humane() {
    return "$day-$month-$year";
  }

  Widget human() => humane().text();

  String get day => this.day.toString();
  String get month => this.month.toString();
  String get year => this.year.toString();
}

String get randomID => const Uuid().v4();

import '../../main.dart';

final navigator = RM.navigate;

BuildContext get context => RM.context!;
MediaQueryData mediaQuery() => MediaQuery.of(context);
Size size() => mediaQuery().size;
Widget backButton({String? tooltip}) {
  return const Icon(
    Icons.keyboard_arrow_left,
  ).floatingActionButton(
    navigator.back,
    tooltip: tooltip ?? 'BACK',
  );
}

// ignore: prefer_const_constructors
String get randomID => Uuid().v4();

final directoryRM = RM.injectFuture(
  getApplicationDocumentsDirectory,
  autoDisposeWhenNotUsed: false,
);
Directory get directory => directoryRM.state;

extension ObjectExtensions on Object? {
  Widget text({
    TextStyle? style,
    double? textScaleFactor,
    double? padding,
  }) =>
      Text(
        toString(),
        style: style,
        textScaler: TextScaler.linear(textScaleFactor ?? 1),
      ).pad(padding: EdgeInsets.all(padding ?? settingsManager.padding));

  void inform({
    Object? error,
    StackTrace? stackTrace,
  }) =>
      StatesRebuilerLogger.log(
        toString(),
        error,
        stackTrace,
      );

  Widget floatingActionButton(
    void Function()? onPressed, {
    String? tooltip,
  }) =>
      FloatingActionButton(
        onPressed: onPressed,
        heroTag: randomID,
        tooltip: tooltip,
        child: () {
          if (this is Widget) {
            return this as Widget;
          } else {
            return text();
          }
        }(),
      );
}

extension WidgetExtensions on Widget {
  Widget pad({
    EdgeInsetsGeometry? padding,
  }) =>
      Padding(
        padding: padding ?? EdgeInsets.all(settingsManager.settings.padding),
        child: this,
      );
  Widget card() => Card(
        child: this,
      ).pad();
  Widget center() => Center(child: this);
  Widget borderizeGradiently() => BorderizedGradientBuilder(
        child: Center(
          child: this,
        ),
      ).pad();
}

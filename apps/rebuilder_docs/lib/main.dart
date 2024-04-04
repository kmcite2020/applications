import 'main.dart';

export 'dart:io';
export 'package:flex_color_scheme/flex_color_scheme.dart';
export 'package:flutter/material.dart';
export 'package:flutter_native_splash/flutter_native_splash.dart';
export 'package:freezed_annotation/freezed_annotation.dart';
export 'package:google_fonts/google_fonts.dart';
export 'package:path_provider/path_provider.dart';
export 'package:rebuilder_docs/features/home_page.dart';
export 'package:rebuilder_docs/features/settings/pages/settings_page.dart';
export 'package:rebuilder_docs/features/settings/settings.dart';
export 'package:rebuilder_docs/hive_storage.dart';
export 'package:states_rebuilder/states_rebuilder.dart';
export 'package:colornames/colornames.dart';
export 'package:rebuilder_docs/features/backup/pages/backup_page.dart';
export 'package:rebuilder_docs/features/settings/components/navigator.dart';

typedef UI = ReactiveStatelessWidget;

void main() async {
  FlutterNativeSplash.preserve(
    widgetsBinding: WidgetsFlutterBinding.ensureInitialized(),
  );
  await RM.storageInitializer(HiveStorage());
  GoogleFonts.config.allowRuntimeFetching = false;
  runApp(
    const App(),
  );
}

class App extends UI {
  const App({super.key});

  @override
  void didMountWidget(context) {
    FlutterNativeSplash.remove();
    super.didUnmountWidget();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: RM.navigate.navigatorKey,
      debugShowCheckedModeBanner: false,
      theme: FlexThemeData.light(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: settings.materialColor,
        ),
        subThemesData: FlexSubThemesData(
          defaultRadius: settings.borderRadius,
        ),
      ),
      darkTheme: FlexThemeData.dark(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: settings.materialColor,
          brightness: Brightness.dark,
        ),
        subThemesData: FlexSubThemesData(
          defaultRadius: settings.borderRadius,
        ),
      ),
      themeMode: settings.themeMode,
      home: HomePage(),
    );
  }
}

extension InjectedExtensions<T> on Injected<T> {
  Widget build(Widget Function(T state) builder) => this.onAll(
        onWaiting: () => CircularProgressIndicator(),
        onError: (_, __) => ErrorWidget.withDetails(),
        onData: builder,
      );
}

extension ObjectExtensions<T> on Object? {
  Widget text({double? textScaleFactor}) {
    return Text(
      toString(),
      textScaler: TextScaler.linear(textScaleFactor ?? 1),
    );
  }
}

extension WidgetExtensions<T> on Widget {
  Widget pad({EdgeInsets? padding}) {
    return Padding(
      padding: padding ?? const EdgeInsets.all(8.0),
      child: this,
    );
  }
}

abstract class Live<T> {
  T call([T? t]);
}

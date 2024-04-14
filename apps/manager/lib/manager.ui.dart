part of 'manager.dart';

/// UI
abstract class TopUI extends TopStatelessWidget {
  double get borderRadius => 8;
  MaterialColor get primarySwatch => Colors.brown;
  ThemeData get theme {
    return FlexThemeData.light(
      colorScheme: ColorScheme.fromSwatch(
        primarySwatch: primarySwatch,
      ),
      lightIsWhite: true,
      subThemesData: FlexSubThemesData(defaultRadius: borderRadius),
    );
  }

  ThemeData get darkTheme {
    return FlexThemeData.dark(
      colorScheme: ColorScheme.fromSwatch(
        primarySwatch: primarySwatch,
        brightness: Brightness.dark,
      ),
      darkIsTrueBlack: true,
      subThemesData: FlexSubThemesData(defaultRadius: borderRadius),
    );
  }

  ThemeMode get themeMode => ThemeMode.system;
  Widget? homePage(BuildContext context);
  @override
  List<FutureOr<void>>? ensureInitialization() => [
        storageRM.initializeState(),
      ];
  @override
  Widget? splashScreen() => CircularProgressIndicator().center();

  @override
  Widget build(BuildContext context) {
    return OnReactive(
      () => MaterialApp(
        navigatorKey: navigator.navigatorKey,
        debugShowCheckedModeBanner: false,
        theme: theme,
        darkTheme: darkTheme,
        themeMode: themeMode,
        home: homePage(context) ??
            Scaffold(
              body: 'override homePage()'.text(textScaleFactor: 2).center(),
            ),
      ),
    );
  }
}

typedef UI = ReactiveStatelessWidget;

/// NAVIGATION
final navigator = RM.navigate;
final back = navigator.back;
final to = navigator.to;

final storageRM = RM.injectFuture(
  () async {
    await Hive.initFlutter();
    final info = await PackageInfo.fromPlatform();
    return Hive.openBox(info.appName);
  },
);

/// PERSISTENCE and STORAGE
Box get storage => storageRM.state;

class SettingsPage extends UI {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          DropdownButtonFormField(
            value: settingsRM(),
            items: ThemeMode.values.map(
              (eachThemeMode) {
                return DropdownMenuItem(
                  value: eachThemeMode,
                  child: eachThemeMode.name.capitalizer.text(),
                );
              },
            ).toList(),
            onChanged: settingsRM.call,
          ).pad(),
          DropdownButtonFormField(
            value: colorRM(),
            items: Colors.primaries.map(
              (eachThemeMode) {
                return DropdownMenuItem(
                  value: eachThemeMode,
                  child: eachThemeMode.colorName.text(),
                );
              },
            ).toList(),
            onChanged: colorRM.call,
          ).pad(),
          ElevatedButton(
            onPressed: storage.isEmpty ? null : storage.clear,
            child: storage.name.text(),
          ).pad(),
        ],
      ),
    );
  }
}

final settingsRM = Simple<ThemeMode>(
  ThemeMode.system,
  persistor: Persistor.list('themeMode', values: ThemeMode.values),
);
final colorRM = Simple(
  Colors.amber,
  persistor: Persistor.list(
    'color',
    values: Colors.primaries,
  ),
);

class ClearStorageButton extends UI {
  const ClearStorageButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: storage.listenable(),
      builder: (context, cachedChild) {
        return ElevatedButton(
          onPressed: storage.isEmpty ? null : storage.clear,
          child: cachedChild,
        ).pad();
      },
      child: storage.name.text(),
    );
  }
}

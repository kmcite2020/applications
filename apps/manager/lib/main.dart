import 'package:manager/manager.dart';

enum CounterActions { add, minus }

class Store<T, A> extends Base<T> {
  Store(
    this.initialState, {
    required this.modifier,
  });
  final T initialState;
  final T Function(T data, A action) modifier;
  T call([A? action]) =>
      action != null ? state = modifier(state, action) : state;
}

final counterRM = Store(
  01,
  modifier: (state, CounterActions action) {
    return switch (action) {
      CounterActions.add => state + 1,
      CounterActions.minus => state - 1,
    };
  },
);

main() {
  runApp(App());
}

class App extends TopUI {
  @override
  ThemeMode get themeMode => settingsRM();
  @override
  MaterialColor get primarySwatch => colorRM();

  @override
  Widget? homePage(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListenableBuilder(
        listenable: storage.listenable(),
        builder: (_, __) {
          return Column(
            children: [
              Container(
                height: 500,
                child: SettingsPage(),
              ),
              storage.toMap().text(),
            ],
          );
        },
      ),
    );
  }
}

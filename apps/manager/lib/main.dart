part of 'manager.dart';

void main() {
  runApp(App());
  doWhenWindowReady(
    () {
      final win = appWindow;
      const initialSize = Size(340, 1032);
      win.minSize = initialSize;
      win.size = initialSize;
      win.title = "Custom window with Flutter";
      win.alignment = Alignment.centerRight;
      win.show();
    },
  );
}

class App extends TopUI {
  @override
  Widget? homePage(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          usersRM().text(),
        ],
      ),
    );
  }
}

final usersRM = ComplexTable(key: 'users', fromJson: User.fromJson);

@freezed
class User extends ID with _$User {
  const factory User({
    @Default('') final String id,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

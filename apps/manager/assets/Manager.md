```dart
/// define a manager class
class ThemeModeRM extends Manager<ThemeMode> {
  ThemeModeRM():super(ThemeMode.system);
  void setThemeMode(ThemeMode? newThemeMode){
    state = newThemeMode;
  }
}
/// create an instance of it
final themeModeRM = ThemeModeRM();
/// use it where its needed like?
App(
  themeMode: themeModeRM()
  onThemeModeChanged: (themeMode) {
    themeModeRM.setThemeMode(themeMode);
  }
)
```

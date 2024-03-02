import 'package:hmis/main.dart';

class UserExperienceView extends UI {
  const UserExperienceView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(child: Center(child: 'THEME MODES'.text().pad())),
        GridView.count(
          crossAxisCount: 3,
          physics: BouncingScrollPhysics(),
          shrinkWrap: true,
          children: ThemeMode.values.map(
            (eachThemeMode) {
              return FilledButton(
                onPressed: eachThemeMode == settingsBloc.getThemeMode
                    ? null
                    : () {
                        settingsBloc.setThemeMode(eachThemeMode);
                      },
                child: eachThemeMode.name.text(),
              ).pad(
                  // settingsBloc.getPadding / 2,
                  );
            },
          ).toList(),
        ),
      ],
    );
  }
}

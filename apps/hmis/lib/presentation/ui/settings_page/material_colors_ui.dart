import 'package:hmis/main.dart';

class MaterialColorsUI extends UI {
  const MaterialColorsUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(child: Center(child: 'MATERIAL COLORS'.text().pad())),
        GridView.count(
          shrinkWrap: true,
          physics: BouncingScrollPhysics(),
          crossAxisCount: 4,
          children: Colors.primaries
              .take(settingsBloc.getColorsVisibility ? 18 : 6)
              .map(
                (eachMaterialColor) => FilledButton(
                  onPressed: eachMaterialColor == settingsBloc.getMaterialColor
                      ? null
                      : () => settingsBloc.setMaterialColor(
                            eachMaterialColor,
                          ),
                  style: FilledButton.styleFrom(
                      backgroundColor: eachMaterialColor),
                  child: 'x'.text(),
                ).pad(
                    // settingsBloc.getPadding / 2,
                    ),
              )
              .toList()
            ..insert(
              0,
              FilledButton(
                onPressed: () {
                  settingsBloc
                      .setColorsVisibility(!settingsBloc.getColorsVisibility);
                },
                child: FaIcon(
                  settingsBloc.getColorsVisibility
                      ? FontAwesomeIcons.chevronDown
                      : FontAwesomeIcons.chevronUp,
                ),
              ).pad(
                  // settingsBloc.getPadding / 2,
                  ),
            )
            ..add(
              FilledButton(
                onPressed: null,
                child:
                    '${Colors.primaries.indexOf(settingsBloc.getMaterialColor) + 1}'
                        .text(),
              ).pad(
                  // settingsBloc.getPadding / 2,
                  ),
            ),
        ),
      ],
    );
  }
}

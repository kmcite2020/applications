import 'package:ideal_store/features/shared/utils.dart';
import 'package:ideal_store/main.dart';

class FontsUI extends UI {
  const FontsUI({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            "Fonts".text(textScaleFactor: 4).pad(),
          ],
        ),
        ListView(
          physics: const BouncingScrollPhysics(),
          shrinkWrap: true,
          children: [
            for (final String eachFont in fonts)
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: randomGolor[100],
                  backgroundColor: randomGolor[900],
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(settingsRM().borderRadius),
                  ),
                ),
                onPressed: settingsRM().font == eachFont
                    ? null
                    : () {
                        settingsRM.font = eachFont;
                      },
                child: eachFont.text(),
              ).pad(),
          ],
        ),
      ],
    );
  }
}

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
            for (final Font eachFont in fonts)
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: randomGolor[100],
                  backgroundColor: randomGolor[900],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(borderRadius),
                  ),
                ),
                onPressed: font == eachFont
                    ? null
                    : () {
                        font = eachFont;
                      },
                child: eachFont.text(),
              ).pad(),
          ],
        ),
      ],
    );
  }
}

import '../../../main.dart';

class MaterialColorsUI extends UI {
  const MaterialColorsUI({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            "Colors".text(textScaleFactor: 4).pad(),
          ],
        ),
        GridView.count(
          physics: const BouncingScrollPhysics(),
          shrinkWrap: true,
          crossAxisCount: 3,
          childAspectRatio: 1.4,
          children: [
            for (final eachColor in colors)
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: eachColor[100],
                  backgroundColor: eachColor[900],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(borderRadius),
                  ),
                ),
                onPressed: materialColor == eachColor
                    ? null
                    : () {
                        materialColor = eachColor;
                      },
                child: eachColor.colorName.text(textScaleFactor: .8),
              ).pad(),
          ],
        ),
      ],
    );
  }
}

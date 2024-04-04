import 'package:beseech/main.dart';

class MaterialColorsUI extends UI {
  const MaterialColorsUI({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const BouncingScrollPhysics(),
      shrinkWrap: true,
      children: [
        // "COLORS".text().pad(),
        // GridView.count(
        //   physics: const BouncingScrollPhysics(),
        //   shrinkWrap: true,
        //   crossAxisCount: 4,
        //   children: [
        //     for (final eachColor in Colors.primaries)
        //       Tooltip(
        //         message: eachColor.colorName,
        //         child: ElevatedButton(
        //           style: ElevatedButton.styleFrom(
        //               elevation: 10,
        //               shape: RoundedRectangleBorder(
        //                 borderRadius: BorderRadius.circular(
        //                     settingsBloc.settings.borderRadius),
        //               ),
        //               backgroundColor: eachColor),
        //           onPressed: settingsBloc.settings.materialColor == eachColor
        //               ? null
        //               : () {
        //                   settingsBloc.setMaterialColor(eachColor);
        //                 },
        //           child: Container(
        //             decoration: BoxDecoration(
        //                 color: eachColor[300],
        //                 borderRadius: BorderRadius.circular(
        //                     settingsBloc.settings.borderRadius)),
        //           ).pad(),
        //         ).pad(),
        //       )
        //   ],
        // ),
        // ElevatedButton(
        //   style: ElevatedButton.styleFrom(
        //     shape: RoundedRectangleBorder(
        //       borderRadius:
        //           BorderRadius.circular(settingsBloc.settings.borderRadius),
        //     ),
        //   ),
        //   onPressed: null,
        //   child: settingsBloc.settings.materialColor.colorName
        //       .toUpperCase()
        //       .text()
        //       .pad(),
        // ).pad(),
      ],
    ).card();
  }
}

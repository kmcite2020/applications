import 'package:beseech/main.dart';

part 'common_ui.dart';

// extension DateTimeExtensions on DateTime? {
//   String get humanReadable {
//     if (this == null) {
//       return 'None';
//     } else {
//       return DateFormat.yMMMEd().format(this!);
//     }
//   }
// }

const PRAYER_COUNT_TEXT_SCALE_FACTOR = 5.0;
const FIRST_RUN_HEADER_TEXT_SCALE_FACTOR = 1.4;
const ADULT_AGE = 365 * 14;

extension A0003 on Widget {
  Widget container({
    double? height,
    double? width,
    Color? color,
    Color? surfaceColor,
    Color? parentColor,
    double? spread,
    double? customBorderRadiusValue,
    BorderRadius? customBorderRadius,
    CurveType? curveType,
    int? depth,
    bool? emboss,
    void Function()? onTap,
  }) {
    return ClayContainer(
      height: height,
      width: width,
      color: color ?? settingsRM.state.materialColor.shade800,
      surfaceColor: surfaceColor,
      parentColor: parentColor,
      spread: spread,
      borderRadius: customBorderRadiusValue ?? settingsRM.state.borderRadius,
      customBorderRadius: customBorderRadius,
      curveType: curveType,
      depth: depth,
      emboss: emboss ?? true,
      child: GestureDetector(
        onDoubleTap: onTap,
        child: this,
      ),
    );
  }
}

// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:beseech/main.dart';

part 'common_ui.dart';

extension A0001 on Object? {
  String get str {
    return toString();
  }
}

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
    return Builder(builder: (context) {
      return ClayContainer(
        height: height,
        width: width,
        color: color ?? settingsBloc.state.materialColor.shade800,
        surfaceColor: surfaceColor,
        parentColor: parentColor,
        spread: spread,
        borderRadius:
            customBorderRadiusValue ?? settingsBloc.state.borderRadius,
        customBorderRadius: customBorderRadius,
        curveType: curveType,
        depth: depth,
        emboss: emboss ?? true,
        child: GestureDetector(
          onDoubleTap: onTap,
          child: this,
        ),
      );
    });
  }
}

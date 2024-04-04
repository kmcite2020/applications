import '../../main.dart';

extension TextX on Object? {
  Text text({
    Key? key,
    TextStyle? style,
    StrutStyle? strutStyle,
    TextAlign? textAlign,
    TextDirection? textDirection,
    Locale? locale,
    bool? softWrap,
    TextOverflow? overflow,
    double? textScaleFactor,
    int? maxLines,
    String? semanticsLabel,
    TextWidthBasis? textWidthBasis,
    TextHeightBehavior? textHeightBehavior,
    Color? selectionColor,
  }) =>
      Text(
        toString(),
        style: style,
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaler: TextScaler.linear(textScaleFactor ?? 1),
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior,
        selectionColor: selectionColor,
      );
}

extension PaddingX on Widget {
  Widget pad([EdgeInsets? _padding]) => Padding(
        padding: _padding ?? EdgeInsets.all(padding),
        child: this,
      );
  Widget clipRadius([double? _borderRadius]) => ClipRRect(
        borderRadius: BorderRadius.circular(_borderRadius ?? borderRadius),
        child: this,
      );
  Widget center({
    double? widthFactor,
    double? heightFactor,
  }) =>
      Center(
        widthFactor: widthFactor,
        heightFactor: heightFactor,
        child: this,
      );
  Widget card({
    MaterialColor? materialColor,
    double? heightFactor,
  }) =>
      Card(
        color: materialColor,
        child: this,
      );
}

typedef Font = String;

part of 'core.dart';

String? get _fontFamily {
  final fontName = settingsBloc.font.description;
  if (fontName == null || fontName == 'Operator Mono' || fontName == 'Lotion') {
    return fontName;
  } else {
    return GoogleFonts.getFont(fontName).fontFamily;
  }
}

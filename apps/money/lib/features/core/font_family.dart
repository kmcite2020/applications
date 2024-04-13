import 'package:money/main.dart';

String? fontFamily(String font) {
  try {
    if (font == 'Default') {
      return null;
    }
    return GoogleFonts.getFont(font).fontFamily;
  } catch (e) {
    log(e.toString());
    return null;
  }
}

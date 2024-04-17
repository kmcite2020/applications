import '../../main.dart';

List<String> get fonts {
  return [
    "Default",
    "Azeret Mono",
    "Comfortaa",
    "DM Mono",
    "Dosis",
    "Fira Sans",
    "IBM Plex Mono",
    "Josefin Sans",
    "Montserrat",
    "Space Mono",
    "Ubuntu",
  ];
}

SizedBox spacing([
  double? width,
  double? height,
]) =>
    SizedBox(
      width: width,
      height: height,
    );

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:manager/manager.dart';

Widget gotoLocation(Widget location) {
  return FilledButton.icon(
    onPressed: () => RM.navigate.to(location),
    icon: Icon(FontAwesomeIcons.route),
    label: Align(
      alignment: Alignment.centerLeft,
      child: location.text(),
    ),
  ).pad();
}

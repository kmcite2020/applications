import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

enum AvailableApps {
  todo(
    description: "Beseech",
    iconData: MdiIcons.handBackRight,
    widget: AboutDialog(),
  ),
  weather(
    description: "Beseech",
    iconData: MdiIcons.handBackRight,
    widget: AboutDialog(),
  ),
  recipe(
    description: "Beseech",
    iconData: MdiIcons.handBackRight,
    widget: AboutDialog(),
  ),
  calculator(
    description: "Beseech",
    iconData: MdiIcons.handBackRight,
    widget: AboutDialog(),
  ),
  quiz(
    description: "Beseech",
    iconData: MdiIcons.handBackRight,
    widget: AboutDialog(),
  ),
  budget(
    description: "Beseech",
    iconData: MdiIcons.handBackRight,
    widget: AboutDialog(),
  ),
  chat(
    description: "Beseech",
    iconData: MdiIcons.handBackRight,
    widget: AboutDialog(),
  ),
  musicPlayer(
    description: "Beseech",
    iconData: MdiIcons.handBackRight,
    widget: AboutDialog(),
  ),
  flashcard(
    description: "Beseech",
    iconData: MdiIcons.handBackRight,
    widget: AboutDialog(),
  ),
  news(
    description: "Beseech",
    iconData: MdiIcons.handBackRight,
    widget: AboutDialog(),
  );

  const AvailableApps({required this.description, required this.iconData, required this.widget});
  final String description;
  final Widget? widget;
  final IconData? iconData;
}

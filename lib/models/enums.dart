import 'package:apps/views/apps.dart';
import 'package:apps/apps/userManagerApp/userManagerApp.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../utils.dart';
import '../views/hiveDB/hiveDB.dart';

enum AvailableApps {
  beseechApp("Beseech", MdiIcons.handBackRight),
  bloodPressureManagerApp("Blood Pressure Manager", MdiIcons.bloodBag),
  commonSymptomsApp("Common Symptoms", MdiIcons.commentPlus),
  userManagerApp("User Manager", MdiIcons.usb, UserManagerApp()),
  fcpsApp("FCPS", MdiIcons.accessPoint),
  hiveDB("Hive DB Explorer", MdiIcons.database, HiveDB()),
  googleFontsViewerApp("Google Fonts Viewer", MdiIcons.fontAwesome),
  hmisApp("HMIS", MdiIcons.heartFlash),
  hospitalApp("Hospital", MdiIcons.hospital),
  idealApp("URideal Store", MdiIcons.store),
  prayersApp("Prayers", MdiIcons.handBackLeft),
  prescriptionsApp("Prescriptions", MdiIcons.elevatorDown),
  opthalmologyApp("Opthalomology MCQs", MdiIcons.chatSleepOutline),
  mcqsManagerApp("Questions for Opthalmology", MdiIcons.chatQuestion),
  settingsApp("Settings", Icons.settings),
  taskManagerApp("Task Manager", MdiIcons.professionalHexagon),
  timerApp("Timer", MdiIcons.timelapse),
  dashboard("Dashboard", MdiIcons.note, Apps());

  const AvailableApps(this.description, [this.iconData, this.widget]);
  final String description;
  final Widget? widget;
  final IconData? iconData;
}

class MaterialColorSerializer implements JsonConverter<MaterialColor, int> {
  const MaterialColorSerializer();

  @override
  MaterialColor fromJson(int json) => colors[json];

  @override
  int toJson(MaterialColor color) => colors.indexOf(color);
}

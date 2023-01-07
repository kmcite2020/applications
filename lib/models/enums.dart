import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

enum AvailableApps {
  beseechApp("Beseech", MdiIcons.handBackRight),
  bloodPressureManagerApp("Blood Pressure Manager", MdiIcons.bloodBag),
  commonSymptomsApp("Common Symptoms", MdiIcons.commentPlus),
  userManagerApp("User Manager", MdiIcons.usb),
  fcpsApp("FCPS", MdiIcons.accessPoint),
  hiveDB("Hive DB Explorer", MdiIcons.database),
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
  todoApp("To-do", MdiIcons.note);

  const AvailableApps(this.description, [this.iconData]);
  final String description;
  final IconData? iconData;
}

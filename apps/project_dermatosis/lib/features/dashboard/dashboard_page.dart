import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:project_dermatosis/features/core/router.dart';
import 'package:project_dermatosis/features/core/shared.dart';
import 'package:project_dermatosis/features/patients/pages/patients_page.dart';
import 'package:project_dermatosis/features/pictures/pictures_page.dart';
import 'package:project_dermatosis/features/settings/settings_page/settings_page.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

class DashboardPage extends ReactiveStatelessWidget {
  const DashboardPage({super.key});
  static const name = '/';
  @override
  Widget build(BuildContext context) {
    return PopScope(
      onPopInvoked: (didPop) {},
      canPop: false,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(DashboardPage.name),
        ),
        body: GridView.count(
          crossAxisCount: 2,
          children: [
            ElevatedButton.icon(
              onPressed: () {
                navigator.to(PicturesPage());
              },
              label: 'Pictures'.text(),
              icon: Icon(Icons.photo_size_select_actual),
            ).pad(),
            ElevatedButton.icon(
              onPressed: () {
                navigator.to(PatientsPage());
              },
              label: 'Patients'.text(),
              icon: Icon(FontAwesomeIcons.prescriptionBottleMedical),
            ).pad(),
            ElevatedButton.icon(
              onPressed: () {
                navigator.to(SettingsPage());
              },
              label: 'Settings'.text(),
              icon: Icon(Icons.settings),
            ).pad(),
          ],
        ),
      ),
    );
  }
}

class LeadingBackButton extends ReactiveStatelessWidget {
  const LeadingBackButton({super.key});
  @override
  Widget build(BuildContext context) {
    return const BackButton().pad(8);
  }
}

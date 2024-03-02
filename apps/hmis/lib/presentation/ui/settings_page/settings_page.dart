import 'package:hmis/main.dart';
import 'package:hmis/presentation/ui/settings_page/material_colors_ui.dart';
import 'package:hmis/presentation/ui/settings_page/user_experience.dart';

class SettingsPage extends UI {
  const SettingsPage({super.key});

  static const name = '/settings';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
        leading: LeadingBackButton(),
        title: 'Settings',
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          UserExperienceView(),
          MaterialColorsUI(),
          GestureDetector(
            onDoubleTap: () => settingsBloc
                .setHospitalNameEditing(!settingsBloc.getEditingHospitalName),
            child: Card(
              child: Center(child: 'HOSPITAL'.text().pad()),
            ),
          ),
          settingsBloc.getEditingHospitalName
              ? TextFormField(
                  initialValue: settingsBloc.state.hospitalName,
                  onChanged: settingsBloc.setHospitalName,
                  onEditingComplete: () =>
                      settingsBloc.setHospitalNameEditing(false),
                  maxLength: 4,
                ).pad()
              : FilledButton(
                  onPressed: () => settingsBloc.setHospitalNameEditing(true),
                  child: settingsBloc.state.hospitalName.text(),
                ).pad(),
          Card(
            child: Center(
              child: 'DELETE ALL PATIENTS'.text().pad(),
            ),
          ),
          FilledButton(
            onPressed: patientsBloc.patients.isEmpty
                ? null
                : patientsBloc.removeAllPatients,
            child: 'DELETE ALL'.text(),
          ).pad(),
          Card(child: Center(child: 'BORDER RADIUS'.text().pad())),
          Slider(
            value: settingsBloc.getBorderRadius,
            onChanged: settingsBloc.setBorderRadius,
            max: 30,
            min: 4,
          ),
          Card(
            child: Center(
              child: 'PADDING'.text().pad(),
            ),
          ),
          Slider(
            value: settingsBloc.getPadding,
            onChanged: settingsBloc.setPadding,
            max: 13,
            min: 4,
          ),
          // Card(child: Center(child: 'ELEVATION'.text().pad())),
          // Slider(
          //   value: settingsBloc.getElevation,
          //   onChanged: settingsBloc.setElevation,
          //   max: 30,
          //   min: 0,
          // ),
          Card(child: Center(child: 'BUTTON HEIGHT'.text().pad())),
          Slider(
            value: settingsBloc.getButtonHeight,
            onChanged: settingsBloc.setButtonHeight,
            max: 10,
            min: 5,
          ),
          // ElevatedButton(
          //   onPressed: defaultInvestigations.isAbleToAddDefaults(investigationsBloc.investigations) ? investigationsBloc.addDefaultInvestigations : null,
          //   child: 'Restore Default Investigations'.text(),
          // ).pad(),
        ],
      ),
    );
  }
}

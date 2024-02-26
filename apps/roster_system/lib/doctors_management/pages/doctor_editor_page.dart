// import '../../../main.dart';

// class DoctorEditorPage extends UI {
//   const DoctorEditorPage({required this.id});
//   final String id;
//   @override
//   Widget build(BuildContext context) {
//     return doctorEditor.globalEditDoctorRM.inherited(
//       sideEffects: SideEffects(
//         onSetState: (snap) {
//           doctorsManager.setDoctor(snap.state);
//         },
//       ),
//       builder: (context) {
//         doctorEditor.localEditDoctorRM =
//             doctorEditor.globalEditDoctorRM(context);
//         doctorEditor.editDoctor = doctorEditor.globalEditDoctorRM.of(context);
//         final editDoctor = doctorEditor.editDoctor;
//         return Scaffold(
//           appBar: AppBar(
//             title: doctorEditor.editDoctor.name.text(),
//           ),
//           body: editDoctor.editing
//               ? ListView(
//                   children: [
//                     TextFormField(
//                       initialValue: doctorEditor.editDoctor.name,
//                       onChanged: doctorEditor.setName,
//                       decoration: InputDecoration(
//                         labelText: 'Name',
//                       ),
//                     ).pad(),
//                     TextFormField(
//                       initialValue: doctorEditor.editDoctor.qualifications,
//                       onChanged: doctorEditor.setQualifications,
//                       decoration: InputDecoration(
//                         labelText: 'Qualifications',
//                       ),
//                     ).pad(),
//                     TextFormField(
//                       initialValue: doctorEditor.editDoctor.contactDetails,
//                       onChanged: doctorEditor.setContactDetails,
//                       decoration: InputDecoration(
//                         labelText: 'Contact Details',
//                       ),
//                     ).pad(),
//                     DropdownButtonFormField(
//                       value: doctorEditor.editDoctor.gender,
//                       items: Gender.values
//                           .map(
//                             (eachGender) => DropdownMenuItem(
//                               value: eachGender,
//                               child: eachGender.name.toUpperCase().text(),
//                             ),
//                           )
//                           .toList(),
//                       onChanged: doctorEditor.setGender,
//                       decoration: InputDecoration(
//                         labelText: 'Gender',
//                       ),
//                     ).pad(),
//                     Container(
//                       width: double.maxFinite,
//                       height: 50,
//                       margin: EdgeInsets.all(settingsManager.get().padding),
//                       decoration: BoxDecoration(
//                         border: Border.all(
//                             color: settingsManager.get().materialColor),
//                         borderRadius: BorderRadius.circular(
//                             settingsManager.get().borderRadius),
//                       ),
//                       child: ElevatedButton.icon(
//                         icon: Icon(Icons.ad_units),
//                         onPressed: () async {
//                           final selectedDateOfBirth = await showDatePicker(
//                             context: context,
//                             initialDate: editDoctor.dateOfBirth,
//                             firstDate: DateTime.fromMicrosecondsSinceEpoch(0),
//                             lastDate: DateTime.now(),
//                           );

//                           if (selectedDateOfBirth != null) {
//                             doctorEditor.setDateOfBirth(selectedDateOfBirth);
//                           }
//                         },
//                         label: 'Change Date Of Birth'.text().pad(),
//                       ),
//                     ),
//                   ],
//                 )
//               : ListView(
//                   shrinkWrap: true,
//                   children: [
//                     ListTile(
//                       title: CircleAvatar(
//                         child: 'NONE'.text(),
//                         radius: 80,
//                       ).pad(),
//                       subtitle: Column(
//                         children: [
//                           editDoctor.name.text(textScaleFactor: 2.3),
//                           editDoctor.qualifications
//                               .text(textScaleFactor: 1.3)
//                               .pad(),
//                           editDoctor.contactDetails.text().pad(),
//                           editDoctor.departments.text().pad(),
//                           Icon(
//                             switch (editDoctor.gender) {
//                               Gender.male => Icons.male,
//                               Gender.female => Icons.female,
//                             },
//                             size: 40,
//                           ),
//                         ],
//                       ),
//                     ),
//                     () {
//                       final age =
//                           DateTime.now().difference(editDoctor.dateOfBirth);
//                       final int ageInYears = age.inDays ~/ 365;
//                       return CircleAvatar(
//                         child: '$ageInYears'.text(),
//                       );
//                     }(),
//                   ],
//                 ).pad().pad(),
//           floatingActionButton: FloatingActionButton(
//             onPressed: () => doctorEditor.setEditing(!editDoctor.editing),
//             child: Icon(editDoctor.editing ? Icons.done : Icons.edit),
//           ),
//         );
//       },
//       stateOverride: () => Doctor.get(id: id),
//     );
//   }
// }

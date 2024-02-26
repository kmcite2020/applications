// import '../../../main.dart';

// class DoctorsManagerPage extends UI {
//   const DoctorsManagerPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: CustomScrollView(
//         slivers: [
//           SliverAppBar(
//             title: 'DOCTORS MANAGER'.text(),
//           ),
//           SliverList.list(
//             children: doctorsManager.doctors
//                 .map(
//                   (doctor) => ListTile(
//                     title: doctor.name.text(),
//                     onTap: () =>
//                         RM.navigate.to(DoctorEditorPage(id: doctor.id)),
//                     trailing: IconButton(
//                       onPressed: () => doctorsManager.removeDoctor(doctor),
//                       icon: Icon(Icons.delete),
//                     ),
//                   ),
//                 )
//                 .toList(),
//           ),
//         ],
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           doctorsManager.addDoctor();
//         },
//         child: Icon(Icons.add),
//       ),
//     );
//   }
// }

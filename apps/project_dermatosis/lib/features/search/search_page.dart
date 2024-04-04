// part of '../../ui/ui.dart';

// class SearchPage extends ReactiveStatelessWidget {
//   const SearchPage({super.key});
//   static const path = '/search';

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: path.text(),
//       ),
//       body: ListView(
//         children: [
//           SearchBar(
//             onChanged: domainBloc.setSearch,
//           ).pad(),
//           ...domainBloc.domain.searchedPatients.map(
//             (eachPatient) => Card(
//               child: ListTile(
//                 title: eachPatient.name.text(),
//                 subtitle: eachPatient.id.text(),
//                 onTap: () {
//                   router.to(PatientPage.name, arguments: eachPatient.id);
//                 },
//               ),
//             ).pad(),
//           )
//         ],
//       ),
//     );
//   }
// }

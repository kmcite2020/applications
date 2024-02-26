// import '../../main.dart';

// class SettingsPage extends UI {
//   const SettingsPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: 'Settings'.text(),
//       ),
//       body: ListView(
//         shrinkWrap: true,
//         physics: const BouncingScrollPhysics(),
//         children: [
//           DropdownButtonFormField(
//             value: themeModeRM(),
//             items: ThemeMode.values.map(
//               (eachThemeMode) {
//                 return DropdownMenuItem(
//                   child: eachThemeMode.name.toUpperCase().text(),
//                   value: eachThemeMode,
//                 );
//               },
//             ).toList(),
//             onChanged: themeModeRM.call,
//           ).pad(),
//           DropdownButtonFormField(
//             value: materialColorRM(),
//             items: Colors.primaries.map(
//               (eachMaterialColor) {
//                 return DropdownMenuItem(
//                   child: eachMaterialColor.colorName.toUpperCase().text(),
//                   value: eachMaterialColor,
//                 );
//               },
//             ).toList(),
//             onChanged: materialColorRM.call,
//           ).pad(),
//         ],
//       ),
//     );
//   }
// }

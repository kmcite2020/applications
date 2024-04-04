// part of '../../../ui/ui.dart';

// class AdvancedThemingPage extends ReactiveStatelessWidget {
//   const AdvancedThemingPage({super.key});
//   static const name = '/theming';

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: 'Advanced Theming Page'.text(),
//         leading: LeadingBackButton(),
//       ),
//       body: ListView(
//         physics: const BouncingScrollPhysics(),
//         children: [
//           Card(
//             child: Column(
//               children: [
//                 'available themes'.text(1.4).pad(),
//                 'select any theme to set colors from'.text().pad(),
//                 DropdownButtonFormField(
//                   value: advancedThemesBloc.advancedThemes.firstOrNull,
//                   items: advancedThemesBloc.advancedThemes
//                       .map(
//                         (e) => DropdownMenuItem(
//                           value: e,
//                           child: e.name.text(),
//                         ),
//                       )
//                       .toList(),
//                   onChanged: advancedThemeBloc.setAdvancedTheme,
//                 ).pad(),
//               ],
//             ),
//           ),
//           Divider(),
//           Card(
//             child: Column(
//               children: [
//                 'advanced theme creater'.text(1.4).pad(),
//                 'tap on colors to create palletes for diffrent schemes'
//                     .text()
//                     .pad(),
//                 Row(
//                   children: [
//                     IconButton(
//                       onPressed: () {
//                         advancedThemeBloc.clearTheme();
//                       },
//                       icon: const Icon(Icons.refresh),
//                     ),
//                     // IconButton(
//                     //   onPressed: advancedThemesBloc.canAddAdvancedTheme(advancedThemeBloc.state.name) ? () => advancedThemesBloc.addAdvancedTheme(advancedThemeBloc.state) : null,
//                     //   icon: const Icon(Icons.save),
//                     // ),
//                     // IconButton(
//                     //   onPressed: advancedThemeBloc.canUndo
//                     //       ? () {
//                     //           advancedThemeBloc.undo();
//                     //         }
//                     //       : null,
//                     //   icon: const Icon(Icons.undo),
//                     // ),
//                     // IconButton(
//                     //   onPressed: advancedThemeBloc.canRedo ? advancedThemeBloc.redo : null,
//                     //   icon: const Icon(Icons.redo),
//                     // ),
//                   ],
//                 ),
//                 TextFormField(
//                   decoration: const InputDecoration(labelText: 'Name'),
//                   controller: advancedThemeBloc.nameFormField.controller,
//                 ).pad(),
//                 TextFormField(
//                   decoration: const InputDecoration(labelText: 'Description'),
//                   controller: advancedThemeBloc.descriptionFormField.controller,
//                 ).pad(),
//                 Divider(),
//                 'Light Pallete'.text(1.2).pad(),
//                 ColorChangerFormField(
//                   color: advancedThemeBloc.lightColors.primary,
//                   onChanged: advancedThemeBloc.onPrimaryLightColorChanged,
//                 ),
//                 ColorChangerFormField(
//                   color: advancedThemeBloc.lightColors.secondary,
//                   onChanged: advancedThemeBloc.onSecondaryLightColorChanged,
//                 ),
//                 ColorChangerFormField(
//                   color: advancedThemeBloc.lightColors.background,
//                   onChanged: advancedThemeBloc.onBackgroundLightColorChanged,
//                 ),
//                 'Dark Pallete'.text(1.2).pad(),
//                 ColorChangerFormField(
//                   color: advancedThemeBloc.darkColors.primary,
//                   onChanged: advancedThemeBloc.onPrimaryDarkColorChanged,
//                 ),
//                 ColorChangerFormField(
//                   color: advancedThemeBloc.darkColors.secondary,
//                   onChanged: advancedThemeBloc.onSecondaryDarkColorChanged,
//                 ),
//                 ColorChangerFormField(
//                   color: advancedThemeBloc.darkColors.background,
//                   onChanged: advancedThemeBloc.onBackgroundDarkColorChanged,
//                 ),
//                 Divider(),
//                 'By using above tools you can create advanced themes'
//                     .text()
//                     .pad()
//                     .pad()
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class ColorChangerFormField extends ReactiveStatelessWidget {
//   const ColorChangerFormField({
//     Key? key,
//     required this.color,
//     required this.onChanged,
//   }) : super(key: key);
//   final MaterialColor color;
//   final void Function(MaterialColor?)? onChanged;
//   @override
//   Widget build(BuildContext context) {
//     return DropdownButtonFormField(
//       padding: EdgeInsets.all(configurationBloc.configuration.padding),
//       value: color,
//       icon: FaIcon(
//         FontAwesomeIcons.solarPanel,
//         color: color,
//       ),
//       items: Colors.primaries
//           .map(
//             (e) => DropdownMenuItem(
//               value: e,
//               child: e.colorName.text(),
//             ),
//           )
//           .toList(),
//       onChanged: onChanged,
//     );
//   }
// }

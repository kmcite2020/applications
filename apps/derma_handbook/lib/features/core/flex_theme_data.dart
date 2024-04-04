// import 'package:flex_color_scheme/flex_color_scheme.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:rx_derma/controllers/settings_bloc.dart';

// ThemeData theme(BuildContext context) {
//   final SettingsBloc settingsBloc = context.watch<SettingsBloc>();
//   return FlexThemeData.light(
//     useMaterial3: true,
//     colorScheme: ColorScheme.fromSwatch(
//       primarySwatch: settingsBloc.state.materialColor,
//     ),
//   ).copyWith(
//     inputDecorationTheme: InputDecorationTheme(
//       filled: true,
//       fillColor: settingsBloc.state.materialColor.shade200,
//       hoverColor: settingsBloc.state.materialColor.shade600,
//       focusColor: settingsBloc.state.materialColor.shade900,
//       border: OutlineInputBorder(
//         borderRadius: BorderRadius.circular(
//           settingsBloc.state.borderRadius,
//         ),
//       ),
//     ),
//   );
// }

// ThemeData darkTheme(BuildContext context) {
//   final SettingsBloc settingsBloc = context.watch<SettingsBloc>();
//   return FlexThemeData.dark(
//     useMaterial3: true,
//     colorScheme: ColorScheme.fromSwatch(
//       primarySwatch: settingsBloc.state.materialColor,
//       brightness: Brightness.dark,
//     ),
//   ).copyWith(
//     inputDecorationTheme: InputDecorationTheme(
//       filled: true,
//       fillColor: settingsBloc.state.materialColor.shade800,
//       hoverColor: settingsBloc.state.materialColor.shade900,
//       focusColor: settingsBloc.state.materialColor.shade600,
//       border: OutlineInputBorder(
//         borderRadius: BorderRadius.circular(
//           settingsBloc.state.borderRadius,
//         ),
//       ),
//     ),
//   );
// }

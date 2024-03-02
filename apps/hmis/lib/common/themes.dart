
// import 'package:manager/manager.dart';

// class Themes {
//   ThemeData get theme {
//     return ThemeData(
//       colorScheme: ColorScheme.fromSwatch(
//         primarySwatch: settingsBloc.getMaterialColor,
//         brightness: Brightness.light,
//       ),
//       appBarTheme: AppBarTheme(
//         systemOverlayStyle: SystemUiOverlayStyle(
//           statusBarColor: settingsBloc.getMaterialColor,
//           systemNavigationBarColor: settingsBloc.getMaterialColor,
//           statusBarBrightness: Brightness.light,
//         ),
//         backgroundColor: settingsBloc.getMaterialColor.shade100,
//         centerTitle: true,
//         shape: RoundedRectangleBorder(
//           borderRadius: borderRadius,
//         ),
//         elevation: settingsBloc.getElevation,
//       ),
//       cardTheme: CardTheme(
//         margin: EdgeInsets.all(settingsBloc.getPadding),
//         shape: RoundedRectangleBorder(
//           borderRadius: borderRadius,
//         ),
//         color: settingsBloc.getMaterialColor.shade100,
//       ),
//       elevatedButtonTheme: ElevatedButtonThemeData(
//         style: ElevatedButton.styleFrom(
//           minimumSize: minimumButtonSize,
//           shape: RoundedRectangleBorder(
//             borderRadius: borderRadius,
//           ),
//         ),
//       ),
//       dialogTheme: DialogTheme(
//         shape: RoundedRectangleBorder(
//           borderRadius: borderRadius,
//         ),
//       ),
//       useMaterial3: true,
//       inputDecorationTheme: InputDecorationTheme(
//         border: OutlineInputBorder(
//           borderRadius: borderRadius,
//         ),
//         filled: true,
//         focusedBorder: OutlineInputBorder(
//           borderRadius: borderRadius,
//         ),
//         hoverColor: Colors.transparent,
//       ),
//       floatingActionButtonTheme: FloatingActionButtonThemeData(
//         shape: RoundedRectangleBorder(borderRadius: borderRadius),
//         sizeConstraints: BoxConstraints.tight(minimumButtonSize),
//       ),
//       filledButtonTheme: FilledButtonThemeData(
//         style: FilledButton.styleFrom(
//           minimumSize: minimumButtonSize,
//           shape: RoundedRectangleBorder(
//             borderRadius: borderRadius,
//           ),
//         ),
//       ),
//     );
//   }

//   ThemeData get darkTheme {
//     return ThemeData(
//       appBarTheme: AppBarTheme(
//         systemOverlayStyle: SystemUiOverlayStyle(
//           statusBarColor: settingsBloc.getMaterialColor,
//           systemNavigationBarColor: settingsBloc.getMaterialColor,
//           statusBarBrightness: Brightness.dark,
//         ),
//         backgroundColor: settingsBloc.getMaterialColor.shade900,
//         centerTitle: true,
//         shape: RoundedRectangleBorder(borderRadius: borderRadius),
//         elevation: settingsBloc.getElevation,
//       ),
//       useMaterial3: true,
//       cardTheme: CardTheme(
//         margin: EdgeInsets.all(settingsBloc.getPadding),
//         shape: RoundedRectangleBorder(
//           borderRadius: borderRadius,
//         ),
//         color: settingsBloc.getMaterialColor.shade800,
//       ),
//       colorScheme: ColorScheme.fromSwatch(
//         primarySwatch: settingsBloc.getMaterialColor,
//         brightness: Brightness.dark,
//       ),
//       inputDecorationTheme: InputDecorationTheme(
//         border: OutlineInputBorder(
//           borderRadius: borderRadius,
//         ),
//       ),
//       elevatedButtonTheme: ElevatedButtonThemeData(
//         style: ElevatedButton.styleFrom(
//           minimumSize: minimumButtonSize,
//           shape: RoundedRectangleBorder(borderRadius: borderRadius),
//         ),
//       ),
//       floatingActionButtonTheme: FloatingActionButtonThemeData(
//         shape: RoundedRectangleBorder(borderRadius: borderRadius),
//       ),
//       filledButtonTheme: FilledButtonThemeData(
//         style: FilledButton.styleFrom(
//           minimumSize: minimumButtonSize,
//           shape: RoundedRectangleBorder(borderRadius: borderRadius),
//         ),
//       ),
//     );
//   }

//   BorderRadius get borderRadius {
//     return BorderRadius.only(
//       bottomLeft: Radius.circular(settingsBloc.getBorderRadius),
//       bottomRight: Radius.circular(settingsBloc.getBorderRadius),
//       topRight: Radius.circular(settingsBloc.getBorderRadius),
//     );
//   }

//   ThemeMode get themeMode => settingsBloc.getThemeMode;
// }

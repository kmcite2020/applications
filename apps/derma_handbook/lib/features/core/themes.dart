import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';

import '../settings/settings.dart';

final themes = Themes();

class Themes {
  ThemeData theme() {
    return FlexThemeData.light(
      colorScheme: ColorScheme.fromSwatch(
        primarySwatch: settingsManager.settings.materialColor,
      ),
      subThemesData: FlexSubThemesData(
        defaultRadius: settingsManager.settings.borderRadius,
      ),
      lightIsWhite: true,
      useMaterial3: true,
    ).copyWith(
        // listTileTheme: ListTileThemeData(
        //   tileColor: configurationBloc.state.materialColor.shade200,
        //   selectedTileColor:
        //       configurationBloc.state.materialColor.shade400.withAlpha(200),
        //   shape: RoundedRectangleBorder(
        //     borderRadius:
        //         BorderRadius.circular(configurationBloc.state.borderRadius),
        //   ),
        // ),
        // cardTheme: CardTheme(
        //   color: configurationBloc.state.materialColor.shade200,
        //   elevation: configurationBloc.state.elevation,
        //   shape: RoundedRectangleBorder(
        //     borderRadius:
        //         BorderRadius.circular(configurationBloc.state.borderRadius),
        //   ),
        // ),
        // scaffoldBackgroundColor: configurationBloc.state.materialColor.shade100,
        // timePickerTheme: TimePickerThemeData(
        //   backgroundColor: configurationBloc.state.materialColor.shade200,
        //   dayPeriodShape: RoundedRectangleBorder(
        //     borderRadius:
        //         BorderRadius.circular(configurationBloc.state.borderRadius),
        //   ),
        //   shape: RoundedRectangleBorder(
        //     borderRadius:
        //         BorderRadius.circular(configurationBloc.state.borderRadius),
        //   ),
        //   hourMinuteShape: RoundedRectangleBorder(
        //     borderRadius:
        //         BorderRadius.circular(configurationBloc.state.borderRadius),
        //   ),
        // ),
        // canvasColor: configurationBloc.state.materialColor.shade200,
        // focusColor: configurationBloc.state.materialColor.shade400,
        // hintColor: configurationBloc.state.materialColor,
        // hoverColor: configurationBloc.state.materialColor.shade400,
        // indicatorColor: configurationBloc.state.materialColor,
        // primaryColorDark: configurationBloc.state.materialColor.shade800,
        // primaryColorLight: configurationBloc.state.materialColor.shade200,
        // secondaryHeaderColor: configurationBloc.state.materialColor,
        // shadowColor: configurationBloc.state.materialColor,
        // splashColor: configurationBloc.state.materialColor,
        // unselectedWidgetColor:
        //     configurationBloc.state.materialColor.withAlpha(100),
        // dialogTheme: DialogTheme(
        //   elevation: configurationBloc.state.elevation,
        //   backgroundColor: configurationBloc.state.materialColor.shade200,
        //   shape: RoundedRectangleBorder(
        //       borderRadius:
        //           BorderRadius.circular(configurationBloc.state.borderRadius)),
        // ),
        // popupMenuTheme: PopupMenuThemeData(
        //   color: configurationBloc.state.materialColor,
        //   shape: RoundedRectangleBorder(
        //     borderRadius: BorderRadius.circular(
        //       configurationBloc.state.borderRadius,
        //     ),
        //   ),
        //   elevation: configurationBloc.state.elevation,
        //   shadowColor: configurationBloc.state.materialColor[900],
        //   surfaceTintColor: configurationBloc.state.materialColor[300],
        // ),
        // appBarTheme: AppBarTheme(
        //   backgroundColor: configurationBloc.state.materialColor.shade100,
        //   elevation: configurationBloc.state.elevation,
        //   toolbarHeight: configurationBloc.state.height,
        // ),
        // elevatedButtonTheme: ElevatedButtonThemeData(
        //   style: ElevatedButton.styleFrom(
        //     backgroundColor: configurationBloc.state.materialColor.shade900,
        //     foregroundColor: configurationBloc.state.materialColor.shade100,
        //     minimumSize: const Size.fromHeight(60),
        //     shape: RoundedRectangleBorder(
        //       borderRadius:
        //           BorderRadius.circular(configurationBloc.state.borderRadius),
        //     ),
        //   ),
        // ),
        // textButtonTheme: TextButtonThemeData(
        //   style: TextButton.styleFrom(
        //     minimumSize: const Size(100, 40),
        //     backgroundColor: configurationBloc.state.materialColor.shade700,
        //     foregroundColor: configurationBloc.state.materialColor.shade900,
        //     shape: RoundedRectangleBorder(
        //       borderRadius: BorderRadius.circular(
        //         configurationBloc.state.borderRadius,
        //       ),
        //     ),
        //   ),
        // ),
        // outlinedButtonTheme: OutlinedButtonThemeData(
        //   style: OutlinedButton.styleFrom(
        //     backgroundColor: configurationBloc.state.materialColor.shade800,
        //     minimumSize: const Size(100, 40),
        //     foregroundColor: configurationBloc.state.materialColor.shade200,
        //     shape: RoundedRectangleBorder(
        //       borderRadius: BorderRadius.circular(
        //         configurationBloc.state.borderRadius,
        //       ),
        //     ),
        //   ),
        // ),
        // inputDecorationTheme: InputDecorationTheme(
        //   filled: true,
        //   fillColor: configurationBloc.state.materialColor.shade200,
        //   hoverColor: configurationBloc.state.materialColor.shade600,
        //   focusColor: configurationBloc.state.materialColor.shade900,
        //   border: OutlineInputBorder(
        //     borderRadius:
        //         BorderRadius.circular(configurationBloc.state.borderRadius),
        //   ),
        // ),
        // colorSchemeSeed: configurationBloc.state.materialColor,
        // brightness: Brightness.light,
        // useMaterial3: true,
        // fontFamily: GoogleFonts.getFont(settingsCubit.state.font).fontFamily,
        // switchTheme: SwitchThemeData(
        //   thumbColor: MaterialStateProperty.all(
        //       configurationBloc.state.materialColor[800]),
        //   trackColor: MaterialStateProperty.all(
        //       configurationBloc.state.materialColor[400]),
        // ),
        // radioTheme: RadioThemeData(
        //   fillColor: MaterialStateProperty.all(
        //       configurationBloc.state.materialColor[700]),
        // ),
        // checkboxTheme: CheckboxThemeData(
        //   fillColor: MaterialStateProperty.resolveWith<Color?>(
        //       (Set<MaterialState> states) {
        //     if (states.contains(MaterialState.disabled)) {
        //       return null;
        //     }
        //     if (states.contains(MaterialState.selected)) {
        //       return configurationBloc.state.materialColor;
        //     }
        //     return null;
        //   }),
        // ),
        // navigationBarTheme: NavigationBarThemeData(
        //   backgroundColor: configurationBloc.state.materialColor[300],
        //   indicatorColor: configurationBloc.state.materialColor[500],
        //   labelTextStyle: MaterialStateProperty.all(
        //     TextStyle(color: configurationBloc.state.materialColor[900]),
        //   ),
        //   iconTheme: MaterialStateProperty.resolveWith(
        //     (states) {
        //       if (states.contains(MaterialState.selected)) {
        //         return IconThemeData(
        //             color: configurationBloc.state.materialColor[100]);
        //       }
        //       return IconThemeData(
        //           color: configurationBloc.state.materialColor[700]);
        //     },
        //   ),
        //   labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
        //   elevation: configurationBloc.state.elevation,
        //   height: configurationBloc.state.height,
        // ),
        );
  }

  ThemeData get darkTheme => FlexThemeData.dark(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: settingsManager.settings.materialColor,
          brightness: Brightness.dark,
        ),
        subThemesData: FlexSubThemesData(
          defaultRadius: settingsManager.settings.borderRadius,
        ),
        darkIsTrueBlack: true,
        useMaterial3: true,
      ).copyWith(
          // cardColor: configurationBloc.state.materialColor,
          // disabledColor: configurationBloc.state.materialColor,
          // dividerColor: configurationBloc.state.materialColor,
          // highlightColor: configurationBloc.state.materialColor,
          // scaffoldBackgroundColor: configurationBloc.state.materialColor.shade800,
          // canvasColor: configurationBloc.state.materialColor.shade900,
          // focusColor: configurationBloc.state.materialColor.shade400,
          // hintColor: configurationBloc.state.materialColor,
          // hoverColor: configurationBloc.state.materialColor,
          // indicatorColor: configurationBloc.state.materialColor,
          // primaryColorDark: configurationBloc.state.materialColor.shade800,
          // primaryColorLight: configurationBloc.state.materialColor.shade200,
          // // colorSchemeSeed: configurationBloc.state.materialColor,
          // secondaryHeaderColor: configurationBloc.state.materialColor,
          // shadowColor: configurationBloc.state.materialColor,
          // splashColor: configurationBloc.state.materialColor,
          // unselectedWidgetColor:
          //     configurationBloc.state.materialColor.withAlpha(100),
          // dialogTheme: DialogTheme(
          //     backgroundColor: configurationBloc.state.materialColor.shade700),
          // popupMenuTheme: PopupMenuThemeData(
          //   color: configurationBloc.state.materialColor,
          //   shape: RoundedRectangleBorder(
          //       borderRadius:
          //           BorderRadius.circular(configurationBloc.state.borderRadius)),
          //   elevation: configurationBloc.state.elevation,
          //   shadowColor: configurationBloc.state.materialColor[300],
          //   surfaceTintColor: configurationBloc.state.materialColor[900],
          // ),
          // appBarTheme: AppBarTheme(
          //   backgroundColor: configurationBloc.state.materialColor.shade900,
          //   elevation: configurationBloc.state.elevation,
          //   toolbarHeight: configurationBloc.state.height,
          // ),
          // elevatedButtonTheme: ElevatedButtonThemeData(
          //   style: ElevatedButton.styleFrom(
          //     elevation: configurationBloc.state.elevation,
          //     minimumSize: const Size.fromHeight(60),
          //     backgroundColor: configurationBloc.state.materialColor.shade300,
          //     foregroundColor: configurationBloc.state.materialColor.shade900,
          //     shape: RoundedRectangleBorder(
          //       borderRadius:
          //           BorderRadius.circular(configurationBloc.state.borderRadius),
          //     ),
          //   ),
          // ),
          // textButtonTheme: TextButtonThemeData(
          //   style: TextButton.styleFrom(
          //       elevation: configurationBloc.state.elevation,
          //       minimumSize: const Size(100, 40),
          //       backgroundColor: configurationBloc.state.materialColor.shade600,
          //       foregroundColor: configurationBloc.state.materialColor.shade900,
          //       shape: RoundedRectangleBorder(
          //           borderRadius: BorderRadius.circular(
          //               configurationBloc.state.borderRadius))),
          // ),
          // outlinedButtonTheme: OutlinedButtonThemeData(
          //   style: OutlinedButton.styleFrom(
          //       elevation: configurationBloc.state.elevation,
          //       minimumSize: const Size(100, 40),
          //       backgroundColor: configurationBloc.state.materialColor.shade800,
          //       foregroundColor: configurationBloc.state.materialColor.shade200,
          //       shape: RoundedRectangleBorder(
          //           borderRadius: BorderRadius.circular(
          //               configurationBloc.state.borderRadius))),
          // ),
          // cardTheme: CardTheme(
          //   color: configurationBloc.state.materialColor.shade900,
          //   elevation: configurationBloc.state.elevation,
          //   shape: RoundedRectangleBorder(
          //     borderRadius:
          //         BorderRadius.circular(configurationBloc.state.borderRadius),
          //   ),
          //   margin: EdgeInsets.all(configurationBloc.state.padding),
          // ),
          // listTileTheme: ListTileThemeData(
          //   tileColor: configurationBloc.state.materialColor.shade900,
          //   selectedTileColor: configurationBloc.state.materialColor.shade600,
          //   shape: RoundedRectangleBorder(
          //       borderRadius:
          //           BorderRadius.circular(configurationBloc.state.borderRadius)),
          // ),
          // brightness: Brightness.dark,
          // useMaterial3: true,
          // fontFamily: GoogleFonts.getFont(settingsCubit.state.font).fontFamily,
          // switchTheme: SwitchThemeData(
          //   thumbColor: MaterialStateProperty.all(
          //       configurationBloc.state.materialColor[200]),
          //   trackColor: MaterialStateProperty.all(
          //       configurationBloc.state.materialColor[600]),
          // ),
          // radioTheme: RadioThemeData(
          //   fillColor: MaterialStateProperty.resolveWith<Color?>(
          //       (Set<MaterialState> states) {
          //     if (states.contains(MaterialState.disabled)) {
          //       return null;
          //     }
          //     if (states.contains(MaterialState.selected)) {
          //       return configurationBloc.state.materialColor;
          //     }
          //     return null;
          //   }),
          // ),
          // checkboxTheme: CheckboxThemeData(
          //   fillColor: MaterialStateProperty.resolveWith<Color?>(
          //       (Set<MaterialState> states) {
          //     if (states.contains(MaterialState.disabled)) {
          //       return null;
          //     }
          //     if (states.contains(MaterialState.selected)) {
          //       return configurationBloc.state.materialColor;
          //     }
          //     return null;
          //   }),
          // ),
          // bottomAppBarTheme:
          //     BottomAppBarTheme(color: configurationBloc.state.materialColor),
          // navigationBarTheme: NavigationBarThemeData(
          //   backgroundColor: configurationBloc.state.materialColor[700],
          //   indicatorColor: configurationBloc.state.materialColor[500],
          //   labelTextStyle: MaterialStateProperty.all(
          //     TextStyle(
          //       color: configurationBloc.state.materialColor[200],
          //     ),
          //   ),
          //   iconTheme: MaterialStateProperty.resolveWith((states) {
          //     if (states.contains(MaterialState.selected)) {
          //       return IconThemeData(
          //         color: configurationBloc.state.materialColor[900],
          //       );
          //     }
          //     return IconThemeData(
          //       color: configurationBloc.state.materialColor[300],
          //     );
          //   }),
          //   labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
          //   elevation: configurationBloc.state.elevation,
          //   height: configurationBloc.state.height,
          // ),
          );
}

// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../../utils.dart';

class SettingsWidgets extends StatelessWidget {
  const SettingsWidgets({super.key});

  @override
  Widget build(context) {
    // final settingsModel = ref.watch(settingsProvider);
    // final settingsNotifier = ref.watch(settingsProvider.notifier);
    return Column(
      children: [
        Card(
          child: ListTile(
            title: Text(
              'THEME MODE',
              textScaleFactor: 1.5,
            ),
            subtitle: Text('CUSTOMISE YOUR THEME MODE'),
          ),
        ),
        // DropdownButtonFormField<ThemeMode>(
        //   borderRadius: BorderRadius.circular(settingsModel.borderRadius),
        //   value: settingsModel.themeMode,
        //   onChanged: (_) => settingsNotifier.themeMode,
        //   items: themeModes
        //       .map(
        //         (ThemeMode eachThemeMode) => DropdownMenuItem(
        //           value: eachThemeMode,
        //           child: Text(
        //             eachThemeMode.name.toUpperCase(),
        //           ),
        //         ),
        //       )
        //       .toList(),
        // ),
        Card(
          child: ListTile(
            title: Text(
              'BACKGROUND COLORS',
              textScaleFactor: 1.5,
            ),
            subtitle: Text('CUSTOMISE YOUR BACKGROUND COLOR'),
          ),
        ),
        // Padding(
        //   padding: EdgeInsets.all(settingsModel.padding),
        //   child: DropdownButtonFormField<MaterialColor>(
        //     icon: SizedBox(),
        //     borderRadius: BorderRadius.circular(settingsModel.borderRadius),
        //     value: settingsModel.materialColor,
        //     onChanged: settingsNotifier.materialColor,
        //     selectedItemBuilder: (context) => colors
        //         .map(
        //           (e) => Text(e.colorName.toUpperCase()),
        //         )
        //         .toList(),
        //     items: colors
        //         .map(
        //           (MaterialColor eachColor) => DropdownMenuItem(
        //             value: eachColor,
        //             child: Container(
        //               width: 200,
        //               padding: EdgeInsets.all(settingsModel.padding),
        //               margin: EdgeInsets.all(2),
        //               decoration: BoxDecoration(
        //                 color: eachColor,
        //                 borderRadius: BorderRadius.circular(settingsModel.borderRadius),
        //                 border: Border.symmetric(),
        //               ),
        //               child: Text(
        //                 eachColor.colorName.toUpperCase(),
        //                 // style: TextStyle(color: eachColor),
        //               ),
        //             ),
        //           ),
        //         )
        //         .toList(),
        //   ),
        // ),
        // Card(
        //   child: ListTile(
        //     title: Text(
        //       'PADDING',
        //       textScaleFactor: 1.5,
        //       softWrap: true,
        //     ),
        //     subtitle: Text('CUSTOMISE PADDING'),
        //     trailing: Text(
        //       '${settingsModel.padding.toInt()}',
        //       // textScaleFactor: 2,
        //     ),
        //   ),
        // ),
        // Padding(
        //   padding: EdgeInsets.all(settingsModel.padding),
        //   child: Slider(
        //     label: settingsModel.padding.toInt().toString(),
        //     min: 0,
        //     max: 25,
        //     // divisions: 10,
        //     value: settingsModel.padding,
        //     onChanged: settingsNotifier.padding,
        //   ),
        // ),
        // Card(
        //   child: ListTile(
        //     title: Text(
        //       'ROUNDED CORNERS',
        //       textScaleFactor: 1.5,
        //       softWrap: true,
        //     ),
        //     subtitle: Text('CUSTOMISE ROUNDED CORNERS'),
        //     trailing: Text(
        //       '${settingsModel.borderRadius.toInt()}',
        //       // textScaleFactor: 2,
        //     ),
        //   ),
        // ),
        // Padding(
        //   padding: EdgeInsets.all(settingsModel.padding),
        //   child: Slider(
        //     label: settingsModel.borderRadius.toInt().toString(),
        //     // divisions: 20,
        //     min: 0,
        //     max: 30,
        //     value: settingsModel.borderRadius,
        //     onChanged: settingsNotifier.borderRadius,
        //   ),
        // ),
        Card(
          child: ListTile(
            title: Text(
              'FONTS SUPPORT',
              textScaleFactor: 1.5,
              softWrap: true,
            ),
            subtitle: Text('CUSTOMISE YOUR FONTS'),
            trailing: Text(
              '${fonts.length}',
              // textScaleFactor: 2,
            ),
          ),
        ),
        // Padding(
        //   padding: EdgeInsets.all(settingsModel.padding),
        //   child: DropdownButtonFormField<String>(
        //     borderRadius: BorderRadius.circular(settingsModel.borderRadius),
        //     value: settingsModel.font,
        //     onChanged: settingsNotifier.font,
        //     items: fonts
        //         .map(
        //           (String? eachFont) => DropdownMenuItem(
        //             value: eachFont,
        //             child: Text(
        //               eachFont!.toUpperCase(),
        //               style: GoogleFonts.getFont(eachFont),
        //             ),
        //           ),
        //         )
        //         .toList(),
        //   ),
        // ),
      ],
    );
  }
}

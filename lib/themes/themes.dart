// ignore_for_file: prefer_const_constructors

import 'package:colornames/colornames.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeModeChanger extends StatelessWidget {
  const ThemeModeChanger({super.key});

  @override
  Widget build(context) {
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
        Padding(
          padding: EdgeInsets.all(padding),
          child: DropdownButtonFormField<ThemeMode>(
            borderRadius: BorderRadius.circular(borderRadius),
            value: themeMode,
            onChanged: (value) => themeMode = value,
            items: themeModes
                .map(
                  (ThemeMode eachThemeMode) => DropdownMenuItem(
                    value: eachThemeMode,
                    child: Text(
                      eachThemeMode.name.toUpperCase(),
                    ),
                  ),
                )
                .toList(),
          ),
        ),
      ],
    );
  }
}

class ColorChanger extends StatelessWidget {
  final Size size;
  const ColorChanger(this.size, {super.key});
  @override
  Widget build(context) {
    return Column(
      children: [
        Card(
          child: ListTile(
            title: Text(
              'BACKGROUND COLORS',
              textScaleFactor: 1.5,
            ),
            subtitle: Text('CUSTOMISE YOUR BACKGROUND COLOR'),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(padding),
          child: DropdownButtonFormField<MaterialColor>(
            icon: SizedBox(),
            borderRadius: BorderRadius.circular(borderRadius),
            value: color,
            onChanged: (value) => color = value,
            selectedItemBuilder: (context) => colors
                .map(
                  (e) => Text(e.colorName.toUpperCase()),
                )
                .toList(),
            items: colors
                .map(
                  (MaterialColor eachColor) => DropdownMenuItem(
                    value: eachColor,
                    child: Container(
                      width: 200,
                      padding: EdgeInsets.all(padding),
                      margin: EdgeInsets.all(2),
                      decoration: BoxDecoration(
                        color: eachColor,
                        borderRadius: BorderRadius.circular(borderRadius),
                        border: Border.symmetric(),
                      ),
                      child: Text(
                        eachColor.colorName.toUpperCase(),
                        // style: TextStyle(color: eachColor),
                      ),
                    ),
                  ),
                )
                .toList(),
          ),
        ),
      ],
    );
  }
}

class FontChanger extends StatelessWidget {
  const FontChanger({super.key});

  @override
  build(context) {
    return Column(
      children: [
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
        Padding(
          padding: EdgeInsets.all(padding),
          child: DropdownButtonFormField<String>(
            borderRadius: BorderRadius.circular(borderRadius),
            value: font,
            onChanged: (value) => font = value,
            items: fonts
                .map(
                  (String? eachFont) => DropdownMenuItem(
                    value: eachFont,
                    child: Text(
                      eachFont!.toUpperCase(),
                      style: GoogleFonts.getFont(eachFont),
                    ),
                  ),
                )
                .toList(),
          ),
        ),
      ],
    );
  }
}

class PaddingChanger extends StatelessWidget {
  const PaddingChanger({super.key});
  @override
  Widget build(context) {
    return Column(
      children: [
        Card(
          child: ListTile(
            title: Text(
              'PADDING',
              textScaleFactor: 1.5,
              softWrap: true,
            ),
            subtitle: Text('CUSTOMISE PADDING'),
            trailing: Text(
              '${padding.toInt()}',
              // textScaleFactor: 2,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(padding),
          child: Slider(
            label: padding.toInt().toString(),
            min: 0,
            max: 25,
            // divisions: 10,
            value: padding,
            onChanged: (value) => padding = value,
          ),
        ),
      ],
    );
  }
}

class BorderRadiusChanger extends StatelessWidget {
  const BorderRadiusChanger({super.key});
  @override
  Widget build(context) {
    return Column(
      children: [
        Card(
          child: ListTile(
            title: Text(
              'ROUNDED CORNERS',
              textScaleFactor: 1.5,
              softWrap: true,
            ),
            subtitle: Text('CUSTOMISE ROUNDED CORNERS'),
            trailing: Text(
              '${borderRadius.toInt()}',
              // textScaleFactor: 2,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(padding),
          child: Slider(
            label: borderRadius.toInt().toString(),
            // divisions: 20,
            min: 0,
            max: 30,
            value: borderRadius,
            onChanged: (value) => borderRadius = value,
          ),
        ),
      ],
    );
  }
}

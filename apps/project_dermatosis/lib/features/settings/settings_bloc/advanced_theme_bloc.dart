// part of '../../../logic/logic.dart';

// final AdvancedThemeBloc advancedThemeBloc = AdvancedThemeBloc();

// class AdvancedThemeBloc {
//   AdvancedThemeModel get advancedThemeModel =>
//       domainBloc.domain.advancedThemeModel.value ?? AdvancedThemeModel();
//   void setAdvancedTheme(AdvancedThemeModel? advancedThemeModel) =>
//       domainBloc.setDomain(
//         domainBloc.domain..advancedThemeModel.value = advancedThemeModel,
//       );

//   AdvancedColorsLight get lightColors => advancedThemeModel.light;
//   AdvancedColorsDark get darkColors => advancedThemeModel.dark;

//   void setName(String? value) {
//     setAdvancedTheme(advancedThemeModel..name = value!);
//   }

//   void setDescription(String? value) {
//     setAdvancedTheme(advancedThemeModel..description = value!);
//   }

//   void setLightColors(AdvancedColorsLight value) {
//     setAdvancedTheme(advancedThemeModel..light = value);
//   }

//   void onPrimaryLightColorChanged(MaterialColor? value) {
//     setLightColors(lightColors..primary = value!);
//   }

//   void onSecondaryLightColorChanged(MaterialColor? value) {
//     setLightColors(lightColors..secondary = value!);
//   }

//   void onBackgroundLightColorChanged(MaterialColor? value) {
//     setLightColors(lightColors..background = value!);
//   }

//   void onDarkColorsChanged(AdvancedColorsDark value) {
//     setAdvancedTheme(advancedThemeModel..dark = value);
//   }

//   void onPrimaryDarkColorChanged(MaterialColor? value) {
//     onDarkColorsChanged(darkColors..primary = value!);
//   }

//   void onSecondaryDarkColorChanged(MaterialColor? value) {
//     onDarkColorsChanged(darkColors..secondary = value!);
//   }

//   void onBackgroundDarkColorChanged(MaterialColor? value) {
//     onDarkColorsChanged(darkColors..background = value!);
//   }

//   void clearTheme() {
//     setAdvancedTheme(AdvancedThemeModel());
//     nameFormField.reset();
//     descriptionFormField.reset();
//   }

//   late final nameFormField = RM.injectTextEditing(
//     text: advancedThemeModel.name,
//     onTextEditing: (textEditing) {
//       setName(textEditing.value);
//     },
//   );
//   late final descriptionFormField = RM.injectTextEditing(
//     text: advancedThemeModel.description,
//     onTextEditing: (textEditing) {
//       setDescription(textEditing.value);
//     },
//   );
// }

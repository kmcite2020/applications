// import 'dart:async';

// import 'package:manager/manager.dart';

// abstract class TopUI extends TopStatelessWidget {
//   const TopUI({super.key});

//   ThemeMode get themeMode => ThemeMode.system;
//   ThemeData get theme => ThemeData.light();
//   ThemeData get darkTheme => ThemeData.dark();

//   @override
//   List<FutureOr<void>>? ensureInitialization() => [
//         RM.storageInitializer(
//           HiveStorage(),
//         ),
//       ];

//   @override
//   Widget? splashScreen() => const CircularProgressIndicator().center();

//   Widget homePage(BuildContext context);
//   @override
//   Widget build(BuildContext context) {
//     return OnReactive(
//       () => MaterialApp(
//         debugShowCheckedModeBanner: false,
//         navigatorKey: RM.navigate.navigatorKey,
//         home: homePage(context),
//         theme: theme,
//         themeMode: themeMode,
//         darkTheme: darkTheme,
//       ),
//     );
//   }
// }

// typedef UI = ReactiveStatelessWidget;

// final navigator = RM.navigate;
// final to = navigator.to;
// final back = navigator.back;
// final toDialog = navigator.toDialog;
// final backAndToNamed = navigator.backAndToNamed;
// final backUntil = navigator.backUntil;
// final forceBack = navigator.forceBack;
// final toAndRemoveUntil = navigator.toAndRemoveUntil;
// final toBottomSheet = navigator.toBottomSheet;
// final toCupertinoDialog = navigator.toCupertinoDialog;
// final toCupertinoModalPopup = navigator.toCupertinoModalPopup;
// final toNamed = navigator.toNamed;
// final toNamedAndRemoveUntil = navigator.toNamedAndRemoveUntil;
// final toReplacement = navigator.toReplacement;
// final toReplacementNamed = navigator.toReplacementNamed;

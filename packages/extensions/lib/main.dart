import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

void main() {
  runApp(
    const MaterialApp(
      home: GraduationScreen(courseName: 'courseName'),
    ),
  );
}

extension DynamicExtensions on dynamic {
  Widget text({
    double? textScaleFactor,
    TextStyle? style,
  }) =>
      Text(
        toString(),
        style: style,
        textScaler: TextScaler.linear(textScaleFactor ?? 1),
      );

  bool get isNull => this == null;
  bool get isNotNull => !isNull;
}

extension WidgetExtensions on Widget {
  Widget pad({EdgeInsets? customPad}) {
    return Padding(
      padding: customPad ?? const EdgeInsets.all(8.0),
      child: this,
    );
  }

  Widget center() => Center(child: this);
}

extension DateTimeExtensions on DateTime {
  String humane() {
    return "$day-$month-$year";
  }

  Widget human() => humane().text();

  String get day => this.day.toString();
  String get month => this.month.toString();
  String get year => this.year.toString();
}

String get randomID => const Uuid().v4();

class GraduationScreen extends StatelessWidget {
  final String courseName;

  const GraduationScreen({
    super.key,
    required this.courseName,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyTheme.courseCardColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: BackButton(color: MyTheme.catalogueButtonColor),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Congratulations, Daria!",
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold)),
            MyTheme.mediumVerticalPadding,
            Text("You have successfully completed $courseName course!",
                style: const TextStyle(fontSize: 18)),
            MyTheme.mediumVerticalPadding,
            ElevatedButton(
                onPressed: () {},
                child: const Text(
                  "View Certificate",
                  style: TextStyle(fontWeight: FontWeight.w500),
                )),
            MyTheme.largeVerticalPadding,
            const Expanded(
              child: Image(
                  alignment: Alignment.topCenter,
                  image: AssetImage('assets/graduation.png')),
            )
          ],
        ),
      ),
    );
  }
}

class MyTheme {
  static Color get backgroundColor => const Color(0xFFF7F7F7);
  static Color get grey => const Color(0xFF999999);
  static Color get catalogueCardColor =>
      const Color(0xFFBAE5D4).withOpacity(0.5);
  static Color get catalogueButtonColor => const Color(0xFF29335C);
  static Color get courseCardColor => const Color(0xFFEDF1F1);
  static Color get progressColor => const Color(0xFF36F1CD);

  static Padding get largeVerticalPadding =>
      const Padding(padding: EdgeInsets.only(top: 32.0));

  static Padding get mediumVerticalPadding =>
      const Padding(padding: EdgeInsets.only(top: 16.0));

  static Padding get smallVerticalPadding =>
      const Padding(padding: EdgeInsets.only(top: 8.0));

  static ThemeData get theme => ThemeData(
        fontFamily: 'Poppins',
        primarySwatch: Colors.blueGrey,
      ).copyWith(
        cardTheme: const CardTheme(
            shadowColor: Colors.transparent,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(16.0)))),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            elevation: MaterialStateProperty.all(0.0),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
            backgroundColor: MaterialStateProperty.all<Color>(
                catalogueButtonColor), // Button color
            foregroundColor: MaterialStateProperty.all<Color>(
                Colors.white), // Text and icon color
          ),
        ),
      );
}

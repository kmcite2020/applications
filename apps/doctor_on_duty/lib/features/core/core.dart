import 'dart:developer' as dev;

import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:states_rebuilder/states_rebuilder.dart';
import 'package:uuid/uuid.dart';

import 'package:doctor_on_duty/features/chapters_page/chapters_page.dart';
import 'package:doctor_on_duty/features/search/search_page.dart';
import 'package:doctor_on_duty/features/settings/settings_bloc.dart';
import 'package:doctor_on_duty/features/settings/settings_page.dart';

import '../chapters_page/chapter_page.dart';
import '../home.dart';
import '../topics/ui/add_topic_page.dart';
import '../topics/ui/topic_details_page.dart';
import '../topics/ui/topics_page.dart';

part 'font_family.dart';
part 'globals.dart';
part 'licenses.dart';
part 'router.dart';
part 'themes.dart';

String get randomId => Uuid().v1();

extension WidgetExtensions on Widget {
  Widget pad([double? pad]) {
    return Padding(padding: EdgeInsets.all(pad ?? 6), child: this);
  }
}

extension ObjectExtensions on Object? {
  void log() {
    dev.log('$this');
  }

  Widget text([double? scale = 1.0]) {
    return Text(
      '$this',
      textScaler: TextScaler.linear(scale ?? 1),
    );
  }

  Widget elevatedButton([void Function()? onPressed]) {
    return ElevatedButton(
      onPressed: onPressed,
      child: this.text(),
    ).pad();
  }
}

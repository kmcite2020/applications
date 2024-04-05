library fcps_pearls;

export 'package:manager/manager.dart';

import 'main.dart';
export 'package:synchronized/synchronized.dart';
export 'dart:convert';
export 'dart:io';
export 'package:colornames/colornames.dart';
export 'package:fcps_pearls/features/shared/app.dart';
export 'package:fcps_pearls/features/shared/core.dart';
export 'package:fcps_pearls/features/authenticated/home/home_page.dart';
export 'package:fcps_pearls/features/pearls/pages/add_pearl.dart';
export 'package:fcps_pearls/features/pearls/pages/edit_pearls.dart';
export 'package:fcps_pearls/features/pearls/pages/pearl_details.dart';
export 'package:fcps_pearls/features/authenticated/pearls/pearls.dart';
export 'package:fcps_pearls/features/authenticated/study/study_mode.dart';
export 'package:fcps_pearls/features/pearls/pearl.dart';
export 'package:fcps_pearls/features/authenticated/settings/settings_page.dart';
export 'package:flex_color_scheme/flex_color_scheme.dart';
export 'package:flutter/material.dart' hide StatelessWidget, Locale, Page, Flow;
export 'package:freezed_annotation/freezed_annotation.dart';
export 'package:hive_flutter/hive_flutter.dart';
export 'package:path_provider/path_provider.dart';
export 'package:uuid/uuid.dart';

void main() => runApp(App());

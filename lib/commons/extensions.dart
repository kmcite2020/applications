import 'package:flutter/material.dart';

import '../features/settings/personalizations/personalizations_bloc.dart';

extension TextX on Object? {
  Text get text => Text(toString());
  Text get textScale => Text(
        toString(),
        textScaleFactor: personalizationsBloc.textSize,
      );
  Text get textScale2 => Text(
        toString(),
        textScaleFactor: 2,
      );
  Text get textScale4 => Text(
        toString(),
        textScaleFactor: 4,
      );
  Text get textScale6 => Text(
        toString(),
        textScaleFactor: 6,
      );
}

extension ExtensionsX on Widget {
  Padding get pad => Padding(
        padding: EdgeInsets.all(personalizationsBloc.padding),
        child: this,
      );
}

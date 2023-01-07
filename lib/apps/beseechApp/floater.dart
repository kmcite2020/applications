// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

class Floater extends StatelessWidget {
  const Floater({this.onPressed, this.child});
  final Function()? onPressed;
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      heroTag: Uuid().v1(),
      onPressed: onPressed,
      child: child,
    );
  }
}

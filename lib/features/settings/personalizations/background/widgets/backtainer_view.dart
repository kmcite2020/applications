import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../background_bloc.dart';

class BackTainer extends ReactiveStatelessWidget {
  const BackTainer({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        backgroundBloc.isColorMode
            ? Container(
                color: backgroundBloc.color,
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
              )
            : Image.memory(
                base64Decode(
                  backgroundBloc.backgroundImage,
                ),
                fit: BoxFit.fill,
                alignment: Alignment.bottomCenter,
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
              ),
        child
      ],
    );
  }
}

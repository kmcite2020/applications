import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:states_rebuilder/scr/state_management/rm.dart';

import '../../../../commons/extensions.dart';
import 'background_bloc.dart';
import 'widgets/all_colors.dart';
import 'widgets/personalizations_modes.dart';

class BackgroundView extends ReactiveStatelessWidget {
  const BackgroundView({super.key});

  @override
  Widget build(BuildContext context) => Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              "BACKGROUND".textScale.pad,
              IconButton(
                onPressed: () => backgroundBloc.toggleIsVisible(),
                icon: Icon(
                  backgroundBloc.isVisible ? Icons.arrow_drop_down : Icons.arrow_right,
                ),
              ).pad,
            ],
          ),
          backgroundBloc.isVisible
              ? Column(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    "Personalize your background".textScale,
                    const PersonalizeModesView(),
                    backgroundBloc.isPictureMode ? const PictureModesView() : const AllColorsView(),
                  ],
                )
              : const SizedBox(),
        ],
      );
}

class PictureModesView extends StatelessWidget {
  const PictureModesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GridView.count(
          shrinkWrap: true,
          crossAxisCount: 3,
          children: [
            for (final String eachImage in backgroundBloc.recentPhotosList)
              ElevatedButton(
                onPressed: () => backgroundBloc.changeToBackground(eachImage),
                style: ElevatedButton.styleFrom(),
                child: Image.memory(
                  base64Decode(eachImage),
                  // width: 100,
                  // height: 100,
                ).pad,
              ).pad,
          ],
        ),
        ElevatedButton(
          onPressed: () => backgroundBloc.pickImage(),
          child: "Browse from FileSystem".text,
        ).pad
      ],
    );
  }
}

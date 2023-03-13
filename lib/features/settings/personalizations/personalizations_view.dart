import '../../../commons/extensions.dart';
import 'background/background_view.dart';
import 'colors/colors_view.dart';
import 'personalizations_bloc.dart';
import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

class PersonalizationView extends ReactiveStatelessWidget {
  const PersonalizationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          "PERSONALIZATIONS".textScale2.pad,
          if (personalizationsBloc.isHidden)
            Column(
              children: [
                const BackgroundView(),
                const ColorsView(),
                "Themes".textScale.pad,
                "Border Radius".textScale.pad,
                "Font Size".textScale.pad,
                "Taskbar".textScale.pad,
              ],
            )
        ],
      ),
    );
  }
}

// MaterialColor color = Colors.blue;
// ui.Image image = ImageGenerator.createImageFromColor(color);

// List<Image> get colorFiles => Colors.primaries.map(
//       (e) {
//       final Image image = ui.ImageGenerator.
//         return Image.memory(e);
//       },
//     ).toList();

/// theme mode  </
/// transparency </
/// color - from bg or manual
/// custom colors
/// show color on start and taskbar
/// show color on title and windows bars
///
/// background image
/// color / image / onlie source
///
///  demo view
///
// IconButton(
            //   onPressed: () => personalizationsBloc.toggleIsHidden(),
            //   icon: Icon(
            //     (personalizationsBloc.isHidden) ? Icons.arrow_upward : Icons.arrow_downward,
            //   ),
            // ),
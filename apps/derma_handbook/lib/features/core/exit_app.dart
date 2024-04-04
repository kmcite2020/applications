import 'package:derma_handbook/main.dart';

import '../settings/settings.dart';

Future<bool> exitHandler(context) async {
  return await showDialog(
    context: context,
    builder: (_) {
      return Builder(builder: (context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius:
                BorderRadius.circular(settingsManager.settings.borderRadius),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              'Dou you want to Exit?'.text(textScaleFactor: 2).pad().pad(),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context, true);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: settingsManager.settings.materialColor[1000],
                ),
                child: 'EXIT'.text().pad(),
              ).pad(),
            ],
          ),
        );
      });
    },
  );
}

void showInformations(Object? data) async {
  // RM.scaffold.showSnackBar(
  //   SnackBar(
  //     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(settingsState.borderRadius)),
  //     padding: EdgeInsets.all(settingsBloc.state.padding),
  //     margin: EdgeInsets.all(settingsBloc.state.padding),
  //     behavior: SnackBarBehavior.floating,
  //     content: Text(
  //       data.toString(),
  //     ),
  //     duration: const Duration(seconds: 2),
  //   ),
  // );
  // await Future.delayed(1.seconds);
}

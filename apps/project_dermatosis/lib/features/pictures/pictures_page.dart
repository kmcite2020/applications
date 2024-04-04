import 'package:flutter/material.dart';
import 'package:project_dermatosis/features/core/router.dart';
import 'package:project_dermatosis/features/core/shared.dart';
import 'package:project_dermatosis/features/pictures/pictures_bloc.dart';
import 'package:project_dermatosis/features/settings/settings_page/settings.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import 'pictures_view_mode.dart';

class PicturesPage extends ReactiveStatelessWidget {
  static const name = '/pictures';

  const PicturesPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(settingsManager.settings.padding),
      child: ClipRRect(
        borderRadius:
            BorderRadius.circular(settingsManager.settings.borderRadius),
        child: switch (settingsManager.settings.picturesViewMode) {
          PicturesViewMode.fullscreen => buildFullscreenView(),
          PicturesViewMode.listviewWithDate => buildListView(),
          PicturesViewMode.gridview => buildGridview(),
        },
      ),
    );
  }

  PicturesViewMode nextMode(PicturesViewMode currentMode) {
    return switch (currentMode) {
      PicturesViewMode.fullscreen => PicturesViewMode.listviewWithDate,
      PicturesViewMode.listviewWithDate => PicturesViewMode.gridview,
      PicturesViewMode.gridview => PicturesViewMode.fullscreen,
    };
  }

  IconData nextModeIcon(PicturesViewMode currentMode) {
    return switch (currentMode) {
      PicturesViewMode.fullscreen => Icons.fullscreen,
      PicturesViewMode.listviewWithDate => Icons.list,
      PicturesViewMode.gridview => Icons.grid_3x3,
    };
  }

  Widget buildGridview() {
    const paddingSize = 8.0;
    return SafeArea(
      child: Scaffold(
        body: GridView.count(
          padding: const EdgeInsets.all(paddingSize),
          mainAxisSpacing: paddingSize,
          crossAxisSpacing: paddingSize,
          crossAxisCount: 2,
          children: imageriesManager.images
              .map(
                (e) => ClipRRect(
                  borderRadius: BorderRadius.circular(
                      settingsManager.settings.borderRadius),
                  child: Image.memory(
                    e.image!,
                    fit: BoxFit.fill,
                  ),
                ),
              )
              .toList(),
        ),
        floatingActionButton: addButton,
      ),
    );
  }

  Widget buildFullscreenView() {
    final size = MediaQuery.of(RM.context!).size;
    return SafeArea(
      child: ClipRRect(
        borderRadius:
            BorderRadius.circular(settingsManager.settings.borderRadius),
        child: DefaultTabController(
          length: imageriesManager.imageries.length,
          child: Scaffold(
            body: TabBarView(
              children: imageriesManager.images
                  .map(
                    (eachPictureModel) => Stack(
                      children: [
                        GestureDetector(
                          onDoubleTap: () {
                            // router.back(e);
                          },
                          child: Image.memory(
                            eachPictureModel.image!,
                            fit: BoxFit.fill,
                            width: size.width,
                            height: size.height,
                          ),
                        ),
                        Align(
                          alignment: Alignment.topCenter,
                          child: topCenterFullScreenCounter(
                            imageriesManager.images.indexOf(eachPictureModel),
                          ),
                        ),
                      ],
                    ),
                  )
                  .toList(),
            ),
            floatingActionButton: addButton,
          ),
        ),
      ),
    );
  }

  Widget buildListView() {
    return Scaffold(
      body: ListView(
        children: imageriesManager.images
            .map(
              (e) => ClipRRect(
                borderRadius: BorderRadius.circular(
                    settingsManager.settings.borderRadius),
                child: Image.memory(e.image!),
              ).pad(),
            )
            .toList(),
      ),
      floatingActionButton: addButton,
    );
  }

  IconButton topCenterFullScreenCounter(int index) {
    return IconButton.filledTonal(
      onPressed: null,
      icon: '${index + 1}/${imageriesManager.images.length}'.text(),
    );
  }

  Widget nextModeButton() {
    return FloatingActionButton(
      heroTag: randomID,
      onPressed: () => settingsManager.setPicturesViewMode(
        nextMode(settingsManager.settings.picturesViewMode),
      ),
      child: Icon(nextModeIcon(settingsManager.settings.picturesViewMode)),
    );
  }

  Widget get addButton {
    return ButtonBar(
      children: [
        FloatingActionButton(
          heroTag: randomID,
          onPressed: () {
            navigator.back();
          },
          child: const Icon(Icons.arrow_back),
        ),
        FloatingActionButton(
          heroTag: randomID,
          onPressed: imageriesManager.pickPicture,
          child: const Icon(Icons.add_a_photo),
        ),
        nextModeButton()
      ],
    );
  }
}

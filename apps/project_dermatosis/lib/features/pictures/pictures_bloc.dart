// part of '../../logic/logic.dart';

// final PicturesBloc picturesBloc = PicturesBloc();

// // class PicturesBloc {
// //   final picturesRM = RM.injectStream(
// //     picturesRepository.pictures,
// //     initialState: <PictureModel>[],
// //   );
// //   List<PictureModel> get pictures => picturesRM.state;

// //   void setPicture(PictureModel pictureModel) async =>
// //       await picturesRepository.setPicture(pictureModel);
// //   void deletePicture(PictureModel pictureModel) async =>
// //       await picturesRepository.deletePicture(pictureModel);
// //   void pickPicture() async {
// //     final filePickerResult = await FilePicker.platform.pickFiles(
// //       lockParentWindow: true,
// //       type: FileType.image,
// //     );
// //     if (filePickerResult != null) {
// //       final platformFile = filePickerResult.files.first;
// //       final path = platformFile.path;
// //       if (path != null) {
// //         final pictureModel = PictureModel(path: path);
// //         setPicture(pictureModel);
// //       }
// //     }
// //   }
// // }

import 'package:states_rebuilder/states_rebuilder.dart';

import 'pictures.dart';

final imageriesManager = ImageriesManager();

class ImageriesManager {
  final imageriesRM = RM.inject(() => Imageries());
  Imageries get imageries => imageriesRM.state;
  set imageries(Imageries _) => imageriesRM.state = _;
  List<Imagery> get images => imageries.imageryCache;

  void addImagery(Imagery imagery) => imageries =
      imageries.copyWith(imageryCache: List.of(images)..add(imagery));

  void removeImagery(Imagery imagery) => imageries =
      imageries.copyWith(imageryCache: List.of(images)..remove(imagery));

  void pickPicture() {}
}

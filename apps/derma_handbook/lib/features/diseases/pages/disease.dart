import 'package:derma_handbook/features/diseases/components/disease_builder.dart';
import 'package:derma_handbook/main.dart';
import '../../settings/settings.dart';
import '../disease.dart';
import 'edit_disease.dart';

class DiseasePage extends ReactiveStatelessWidget {
  static String path = '/disease';

  const DiseasePage({
    super.key,
    required this.id,
  });
  final String id;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return DiseaseBuilder(
      id: id,
      builder: (BuildContext context, Disease disease) {
        if (disease.descriptions.isNotEmpty) {
          return Scaffold(
            appBar: AppBar(
              title: disease.name.toUpperCase().text(),
              centerTitle: true,
              leading: const BackButton().pad(),
            ),
            body: Stack(
              children: [
                Opacity(
                  opacity: .6,
                  child: Image.memory(
                    Uint8List.fromList(disease.image!),
                    fit: BoxFit.fill,
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                  ),
                ),
                Opacity(
                  opacity: .8,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      disease.name.text(textScaleFactor: 2).pad(),
                      'Descriptions'.text(textScaleFactor: 1.2).pad(),
                      ...disease.descriptions.map(
                        (e) => Chip(
                          label: e.text(),
                        ).pad(),
                      ),
                      'Instructions'.text(textScaleFactor: 1.2).pad(),
                      ...disease.instructions.map(
                        (e) => Chip(
                          label: e.text(),
                        ).pad(),
                      ),
                      'Managements'.text(textScaleFactor: 1.2).pad(),
                      ...disease.managements.map(
                        (e) => Chip(
                          label: e.text(),
                        ).pad(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                navigator.to(EditDiseasePage(
                  id: '',
                ));
              },
              child: const Icon(Icons.edit),
            ),
          );
        }
        return GestureDetector(
          onDoubleTap: navigator.back,
          child: Scaffold(
            appBar: AppBar(
              title: disease.name.toUpperCase().text(),
              centerTitle: true,
              leading: const BackButton().pad(),
            ),
            body: ClipRRect(
              borderRadius:
                  BorderRadius.circular(settingsManager.settings.borderRadius),
              child: ColorFiltered(
                colorFilter: ColorFilter.mode(
                  settingsManager.settings.materialColor,
                  BlendMode.hue,
                ),
                child: (disease).image == null
                    ? null
                    : Image.memory(
                        Uint8List.fromList(disease.image!),
                        fit: BoxFit.fill,
                        height: size.height,
                        width: size.width,
                      ),
              ),
            ).pad(),
          ),
        );
      },
    );
  }
}

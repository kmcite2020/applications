import 'package:derma_handbook/features/diseases/components/disease_builder.dart';
import 'package:derma_handbook/main.dart';
import '../../settings/settings.dart';
import '../pages/disease.dart';

Widget diseaseTile(String id) {
  return DiseaseBuilder(
    id: id,
    builder: (context, disease) => Card(
      child: ListTile(
        leading: CircleAvatar(
          child: disease.image == null
              ? null
              : ClipRRect(
                  borderRadius: BorderRadius.circular(
                      settingsManager.settings.borderRadius),
                  child: Image.memory(
                    Uint8List.fromList(disease.image!),
                    fit: BoxFit.fill,
                    height: 40,
                    width: 40,
                  ),
                ),
        ),
        trailing: IconButton(
          onPressed: () {
            // DiseasesMutations.removeDisease(disease);
          },
          icon: const Icon(Icons.delete_forever),
        ),
        title: disease.name.text(),
        // subtitle: disease.id.textify(),
        onTap: () {
          navigator.to(DiseasePage(id: disease.id));
        },
      ),
    ),
  );
}

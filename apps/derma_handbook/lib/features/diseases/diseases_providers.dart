import 'package:isar/isar.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../../main.dart';
import 'disease.dart';

Stream<List<Disease>> watchDiseases() {
  return isar.diseases.where().watch(fireImmediately: true);
}

Stream<Disease?> watchDisease(int? id) =>
    isar.diseases.watchObject(id ?? -1, fireImmediately: true);

final diseaseProvider = RM.injectStream<Disease?>(
  () => watchDisease(currentID),
  autoDisposeWhenNotUsed: false,
  dependsOn: DependsOn(
    {currentIDProvider},
  ),
);

int? get currentID => currentIDProvider.state;

final currentIDProvider = RM.inject<int?>(() => throw UnimplementedError());

final diseasesPrvider = RM.injectStream(
  watchDiseases,
  initialState: <Disease>[],
);

List<Disease> get diseases => diseasesPrvider.state;

abstract class DiseasesMutations {
  static void removeDisease(Disease disease) =>
      isar.write((isar) => isar.diseases.delete(disease.id));

  static void removeAllDiseases() =>
      isar.write((isar) => isar.diseases.clear());

  static void addDisease(Disease disease) {
    isar.write((isar) => isar.diseases.put(disease));
  }
}

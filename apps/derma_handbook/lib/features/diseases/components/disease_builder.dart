import 'package:derma_handbook/main.dart';

import 'package:derma_handbook/features/diseases/disease.dart';

class DiseaseBuilder extends UI {
  const DiseaseBuilder({
    super.key,
    required this.id,
    required this.builder,
  });

  final String id;

  final Widget Function(Disease disease) builder;
  @override
  Widget build(BuildContext context) {
    final disease = diseasesRM.tryGet(id);
    if (disease == null) return CircularProgressIndicator().center();
    return builder(disease);
  }
}

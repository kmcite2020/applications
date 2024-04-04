import 'package:derma_handbook/main.dart';

import 'package:derma_handbook/features/diseases/disease.dart';

class DiseaseBuilder extends UI {
  const DiseaseBuilder({
    required this.id,
    required this.builder,
  });

  final String id;

  final Widget Function(BuildContext context, Disease disease) builder;
  @override
  Widget build(BuildContext context) {
    final disease = diseasesRM().diseases[id]!;
    return builder(context, disease);
  }
}

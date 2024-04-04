import 'package:derma_handbook/features/core/router.dart';
import 'package:derma_handbook/features/diseases/components/disease_builder.dart';
import 'package:derma_handbook/features/diseases/pages/disease.dart';
import 'package:derma_handbook/main.dart';

import '../search.dart';

class SearchedDiseasesList extends ReactiveStatelessWidget {
  const SearchedDiseasesList({super.key});
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      itemCount: searchModel.searchedDiseases.length,
      itemBuilder: (context, index) {
        final eachDisease = searchModel.searchedDiseases[index];
        return searchedDiseaseTile(eachDisease.id);
      },
    );
  }
}

Widget searchedDiseaseTile(String id) {
  return DiseaseBuilder(
    id: id,
    builder: (context, disease) => Card(
      child: ListTile(
        title: disease.id.text(),
        subtitle: disease.name.text(textScaleFactor: 1.5),
        onTap: () {
          navigator.to(DiseasePage(id: id));
        },
      ),
    ),
  );
}

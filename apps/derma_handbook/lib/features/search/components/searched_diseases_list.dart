import 'package:derma_handbook/features/core/extensions.dart';
import 'package:derma_handbook/features/core/router.dart';
import 'package:derma_handbook/features/diseases/components/disease_builder.dart';
import 'package:derma_handbook/features/diseases/pages/disease.dart';
import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

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

Widget searchedDiseaseTile(int id) {
  return DiseaseBuilder(
    id: id,
    builder: (context, disease) => Card(
      child: ListTile(
        title: disease.id.text(1),
        subtitle: disease.name.text(1.5),
        onTap: () {
          navigator.to(DiseasePage(id: id));
        },
      ),
    ),
  );
}

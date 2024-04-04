import 'package:derma_handbook/features/core/extensions.dart';
import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../../settings/settings.dart';
import '../diseases_providers.dart';
import '../components/disease_tile.dart';

class DiseasesPage extends ReactiveStatelessWidget {
  const DiseasesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: 'Diseases'.text(settingsManager.settings.headlineTextSize),
      ),
      body: ListView.builder(
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        itemCount: diseases.length,
        itemBuilder: (context, index) => diseaseTile(diseases[index].id),
      ),
    );
  }
}

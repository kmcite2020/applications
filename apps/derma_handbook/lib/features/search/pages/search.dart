import 'package:derma_handbook/features/core/extensions.dart';
import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';
import '../../core/constants.dart';
import '../../settings/settings.dart';
import '../components/search_bar.dart';
import '../components/searched_diseases_list.dart';

class SearchPage extends ReactiveStatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: appTitle.text(settingsManager.settings.headlineTextSize),
        actions: [],
      ),
      body: ListView(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        children: const [
          SearchBarWidget(),
          SearchedDiseasesList(),
        ],
      ),
    );
  }
}

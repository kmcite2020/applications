import 'package:derma_handbook/features/search/search.dart';
import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

class SearchModeIcon extends ReactiveStatelessWidget {
  const SearchModeIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return switch (searchModel.searchMode) {
      SearchMode.contains => const Icon(Icons.search),
      SearchMode.startsWith => const Icon(Icons.start),
    };
  }
}

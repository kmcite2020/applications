import 'package:derma_handbook/features/core/extensions.dart';
import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../../settings/settings.dart';
import '../search.dart';

final searchTextRM = RM.injectTextEditing(text: searchModel.search);

class SearchBarWidget extends ReactiveStatelessWidget {
  const SearchBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SearchBar(
      leading: const Icon(Icons.search).pad(),
      focusNode: searchTextRM.focusNode,
      hintText: 'Enter name to search',
      controller: searchTextRM.controller,
      onChanged: (String search) => setSearchModel(
        searchModel.copyWith.search(search.toLowerCase()),
      ),
      shape: MaterialStatePropertyAll(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            settingsManager.settings.borderRadius,
          ),
        ),
      ),
      elevation: MaterialStatePropertyAll(40),
    ).pad();
  }
}

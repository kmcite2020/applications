import 'package:derma_handbook/main.dart';

import '../../settings/settings.dart';
import '../search.dart';

final searchTextRM = RM.injectTextEditing(text: searchModel.search);

class SearchBarWidget extends UI {
  const SearchBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SearchBar(
      leading: const Icon(Icons.search).pad(),
      focusNode: searchTextRM.focusNode,
      hintText: 'Enter name to search',
      controller: searchTextRM.controller,
      onChanged: (String search) => setSearchModel(
        searchModel.copyWith(search: search.toLowerCase()),
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

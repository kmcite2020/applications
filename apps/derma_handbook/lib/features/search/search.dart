import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../diseases/disease.dart';
import '../diseases/diseases_providers.dart';

part 'search.g.dart';

@JsonSerializable()
@CopyWith()
class Search {
  toJson() => _$SearchToJson(this);
  factory Search.fromJson(Map<String, dynamic> json) => _$SearchFromJson(json);

  final SearchMode searchMode;
  final String search;
  const Search({
    this.searchMode = SearchMode.contains,
    this.search = '',
  });
  List<Disease> get searchedDiseases {
    return switch (searchMode) {
      SearchMode.contains => diseases
          .where(
            (element) => element.name.toLowerCase().contains(search),
          )
          .toList(),
      SearchMode.startsWith => diseases
          .where(
            (eachDisease) => eachDisease.name.toLowerCase().startsWith(search),
          )
          .toList(),
    };
  }

  @override
  String toString() =>
      'SearchState(searchedDiseaseNames: $searchedDiseases, searchMode: $searchMode, search: $search)';
}

enum SearchMode {
  contains,
  startsWith;
}

final searchRM = RM.inject(() => Search());
Search get searchModel => searchRM.state;
void setSearchModel(Search searchModel) => searchRM.state = searchModel;

void setSearchMode(SearchMode searchMode) =>
    setSearchModel(searchModel.copyWith.searchMode(searchMode));

void setSearchText(String search) =>
    setSearchModel(searchModel.copyWith.search(search));

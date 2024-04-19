import '../../main.dart';
import '../diseases/disease.dart';

part 'search.g.dart';
part 'search.freezed.dart';

@freezed
class Search with _$Search {
  const factory Search({
    @Default(SearchMode.startsWith) final SearchMode searchMode,
    @Default('') final String search,
  }) = _Search;
  const Search._();
  List<Disease> get searchedDiseases {
    return switch (searchMode) {
      SearchMode.contains => diseasesRM()
          .where(
            (element) => element.name.toLowerCase().contains(search),
          )
          .toList(),
      SearchMode.startsWith => diseasesRM()
          .where(
            (eachDisease) => eachDisease.name.toLowerCase().startsWith(search),
          )
          .toList(),
    };
  }

  factory Search.fromJson(Map<String, dynamic> json) => _$SearchFromJson(json);
}

enum SearchMode {
  contains,
  startsWith;
}

final searchRM = RM.inject(() => Search());
Search get searchModel => searchRM.state;
void setSearchModel(Search searchModel) => searchRM.state = searchModel;

void setSearchMode(SearchMode searchMode) =>
    setSearchModel(searchModel.copyWith(searchMode: searchMode));

void setSearchText(String search) =>
    setSearchModel(searchModel.copyWith(search: search));

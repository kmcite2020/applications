import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../topics/topics.dart';
import '../topics/topics_manager.dart';

part 'search_model.freezed.dart';
part 'search_model.g.dart';

@freezed
class SearchModel with _$SearchModel {
  const SearchModel._();
  const factory SearchModel({
    required final String search,
  }) = _SearchModel;
  factory SearchModel.fromJson(json) => _$SearchModelFromJson(json);
  List<Topic> get topics => [];
}

final searchBloc = SearchBloc();

class SearchBloc {
  final searchModelRM = RM.inject(
    () => SearchModel(search: ''),
    persist: () => PersistState(
      key: 'searchModel',
      fromJson: (json) => SearchModel.fromJson(jsonDecode(json)),
      toJson: (s) => jsonEncode(s.toJson()),
    ),
  );
  SearchModel get searchModel => searchModelRM.state;

  void setSearchModel(SearchModel searchModel) =>
      searchModelRM.state = searchModel;

  void setSearch(String search) {
    setSearchModel(searchModel.copyWith(search: search));
  }

  List<Topic> get searchedTopics {
    return topicsManager.topics.where(
      (element) {
        return element.name.toLowerCase() ==
            searchBloc.searchModel.search.toLowerCase();
      },
    ).toList();
  }
}

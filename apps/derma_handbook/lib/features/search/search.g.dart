// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$SearchCWProxy {
  Search searchMode(SearchMode searchMode);

  Search search(String search);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Search(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Search(...).copyWith(id: 12, name: "My name")
  /// ````
  Search call({
    SearchMode? searchMode,
    String? search,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfSearch.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfSearch.copyWith.fieldName(...)`
class _$SearchCWProxyImpl implements _$SearchCWProxy {
  const _$SearchCWProxyImpl(this._value);

  final Search _value;

  @override
  Search searchMode(SearchMode searchMode) => this(searchMode: searchMode);

  @override
  Search search(String search) => this(search: search);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Search(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Search(...).copyWith(id: 12, name: "My name")
  /// ````
  Search call({
    Object? searchMode = const $CopyWithPlaceholder(),
    Object? search = const $CopyWithPlaceholder(),
  }) {
    return Search(
      searchMode:
          searchMode == const $CopyWithPlaceholder() || searchMode == null
              ? _value.searchMode
              // ignore: cast_nullable_to_non_nullable
              : searchMode as SearchMode,
      search: search == const $CopyWithPlaceholder() || search == null
          ? _value.search
          // ignore: cast_nullable_to_non_nullable
          : search as String,
    );
  }
}

extension $SearchCopyWith on Search {
  /// Returns a callable class that can be used as follows: `instanceOfSearch.copyWith(...)` or like so:`instanceOfSearch.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$SearchCWProxy get copyWith => _$SearchCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Search _$SearchFromJson(Map<String, dynamic> json) => Search(
      searchMode:
          $enumDecodeNullable(_$SearchModeEnumMap, json['searchMode']) ??
              SearchMode.contains,
      search: json['search'] as String? ?? '',
    );

Map<String, dynamic> _$SearchToJson(Search instance) => <String, dynamic>{
      'searchMode': _$SearchModeEnumMap[instance.searchMode]!,
      'search': instance.search,
    };

const _$SearchModeEnumMap = {
  SearchMode.contains: 'contains',
  SearchMode.startsWith: 'startsWith',
};

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SearchImpl _$$SearchImplFromJson(Map<String, dynamic> json) => _$SearchImpl(
      searchMode:
          $enumDecodeNullable(_$SearchModeEnumMap, json['searchMode']) ??
              SearchMode.startsWith,
      search: json['search'] as String? ?? '',
    );

Map<String, dynamic> _$$SearchImplToJson(_$SearchImpl instance) =>
    <String, dynamic>{
      'searchMode': _$SearchModeEnumMap[instance.searchMode]!,
      'search': instance.search,
    };

const _$SearchModeEnumMap = {
  SearchMode.contains: 'contains',
  SearchMode.startsWith: 'startsWith',
};

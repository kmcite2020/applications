// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings.dart';

// **************************************************************************
// _IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, invalid_use_of_protected_member, lines_longer_than_80_chars, constant_identifier_names, avoid_js_rounded_ints, no_leading_underscores_for_local_identifiers, require_trailing_commas, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_in_if_null_operators, library_private_types_in_public_api, prefer_const_constructors
// ignore_for_file: type=lint

extension GetSettingsModelCollection on Isar {
  IsarCollection<String, SettingsModel> get settingsModels => this.collection();
}

const SettingsModelSchema = IsarGeneratedSchema(
  schema: IsarSchema(
    name: 'SettingsModel',
    idName: 'id',
    embedded: false,
    properties: [
      IsarPropertySchema(
        name: 'id',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'json',
        type: IsarType.json,
      ),
    ],
    indexes: [],
  ),
  converter: IsarObjectConverter<String, SettingsModel>(
    serialize: serializeSettingsModel,
    deserialize: deserializeSettingsModel,
    deserializeProperty: deserializeSettingsModelProp,
  ),
  embeddedSchemas: [],
);

@isarProtected
int serializeSettingsModel(IsarWriter writer, SettingsModel object) {
  IsarCore.writeString(writer, 1, object.id);
  IsarCore.writeString(writer, 2, isarJsonEncode(object.json));
  return Isar.fastHash(object.id);
}

@isarProtected
SettingsModel deserializeSettingsModel(IsarReader reader) {
  final String _id;
  _id = IsarCore.readString(reader, 1) ?? '';
  final Map<String, dynamic> _json;
  {
    final json = isarJsonDecode(IsarCore.readString(reader, 2) ?? 'null');
    if (json is Map<String, dynamic>) {
      _json = json;
    } else {
      _json = const <String, dynamic>{};
    }
  }
  final object = SettingsModel(
    id: _id,
    json: _json,
  );
  return object;
}

@isarProtected
dynamic deserializeSettingsModelProp(IsarReader reader, int property) {
  switch (property) {
    case 1:
      return IsarCore.readString(reader, 1) ?? '';
    case 2:
      {
        final json = isarJsonDecode(IsarCore.readString(reader, 2) ?? 'null');
        if (json is Map<String, dynamic>) {
          return json;
        } else {
          return const <String, dynamic>{};
        }
      }
    default:
      throw ArgumentError('Unknown property: $property');
  }
}

extension SettingsModelQueryFilter
    on QueryBuilder<SettingsModel, SettingsModel, QFilterCondition> {
  QueryBuilder<SettingsModel, SettingsModel, QAfterFilterCondition> idEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SettingsModel, SettingsModel, QAfterFilterCondition>
      idGreaterThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SettingsModel, SettingsModel, QAfterFilterCondition>
      idGreaterThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SettingsModel, SettingsModel, QAfterFilterCondition> idLessThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SettingsModel, SettingsModel, QAfterFilterCondition>
      idLessThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SettingsModel, SettingsModel, QAfterFilterCondition> idBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 1,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SettingsModel, SettingsModel, QAfterFilterCondition>
      idStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SettingsModel, SettingsModel, QAfterFilterCondition> idEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SettingsModel, SettingsModel, QAfterFilterCondition> idContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SettingsModel, SettingsModel, QAfterFilterCondition> idMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 1,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SettingsModel, SettingsModel, QAfterFilterCondition>
      idIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 1,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<SettingsModel, SettingsModel, QAfterFilterCondition>
      idIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 1,
          value: '',
        ),
      );
    });
  }
}

extension SettingsModelQueryObject
    on QueryBuilder<SettingsModel, SettingsModel, QFilterCondition> {}

extension SettingsModelQuerySortBy
    on QueryBuilder<SettingsModel, SettingsModel, QSortBy> {
  QueryBuilder<SettingsModel, SettingsModel, QAfterSortBy> sortById(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        1,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<SettingsModel, SettingsModel, QAfterSortBy> sortByIdDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        1,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<SettingsModel, SettingsModel, QAfterSortBy> sortByJson() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2);
    });
  }

  QueryBuilder<SettingsModel, SettingsModel, QAfterSortBy> sortByJsonDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2, sort: Sort.desc);
    });
  }
}

extension SettingsModelQuerySortThenBy
    on QueryBuilder<SettingsModel, SettingsModel, QSortThenBy> {
  QueryBuilder<SettingsModel, SettingsModel, QAfterSortBy> thenById(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SettingsModel, SettingsModel, QAfterSortBy> thenByIdDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SettingsModel, SettingsModel, QAfterSortBy> thenByJson() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2);
    });
  }

  QueryBuilder<SettingsModel, SettingsModel, QAfterSortBy> thenByJsonDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2, sort: Sort.desc);
    });
  }
}

extension SettingsModelQueryWhereDistinct
    on QueryBuilder<SettingsModel, SettingsModel, QDistinct> {
  QueryBuilder<SettingsModel, SettingsModel, QAfterDistinct> distinctByJson() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(2);
    });
  }
}

extension SettingsModelQueryProperty1
    on QueryBuilder<SettingsModel, SettingsModel, QProperty> {
  QueryBuilder<SettingsModel, String, QAfterProperty> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<SettingsModel, Map<String, dynamic>, QAfterProperty>
      jsonProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }
}

extension SettingsModelQueryProperty2<R>
    on QueryBuilder<SettingsModel, R, QAfterProperty> {
  QueryBuilder<SettingsModel, (R, String), QAfterProperty> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<SettingsModel, (R, Map<String, dynamic>), QAfterProperty>
      jsonProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }
}

extension SettingsModelQueryProperty3<R1, R2>
    on QueryBuilder<SettingsModel, (R1, R2), QAfterProperty> {
  QueryBuilder<SettingsModel, (R1, R2, String), QOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<SettingsModel, (R1, R2, Map<String, dynamic>), QOperations>
      jsonProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SettingsImpl _$$SettingsImplFromJson(Map<String, dynamic> json) =>
    _$SettingsImpl(
      themeMode: $enumDecodeNullable(_$ThemeModeEnumMap, json['themeMode']) ??
          ThemeMode.system,
      hospitalName: json['hospitalName'] as String? ?? '',
      userName: json['userName'] as String? ?? '',
    );

Map<String, dynamic> _$$SettingsImplToJson(_$SettingsImpl instance) =>
    <String, dynamic>{
      'themeMode': _$ThemeModeEnumMap[instance.themeMode]!,
      'hospitalName': instance.hospitalName,
      'userName': instance.userName,
    };

const _$ThemeModeEnumMap = {
  ThemeMode.system: 'system',
  ThemeMode.light: 'light',
  ThemeMode.dark: 'dark',
};

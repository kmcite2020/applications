import 'package:manager/manager.dart';

part 'pearl.freezed.dart';
part 'pearl.g.dart';

@freezed
class Pearl with _$Pearl {
  const factory Pearl({
    @Default('') final String id,
    @Default('') final String statement,
    @Default('') final String answer,
    @Default('') final String explanation,
  }) = _Pearl;

  factory Pearl.fromJson(json) => _$PearlFromJson(json);
}

final pearlsRM = ComplexTable('pearls', fromJson: Pearl.fromJson);

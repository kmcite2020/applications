import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pictures.g.dart';
part 'pictures.freezed.dart';

@freezed
class Imagery with _$Imagery {
  const factory Imagery({
    @Default('') final String path,
  }) = _Imagery;

  factory Imagery.fromJson(Map<String, dynamic> json) =>
      _$ImageryFromJson(json);

  const Imagery._();
  Uint8List? get image {
    try {
      return File(path).readAsBytesSync();
    } catch (e) {
      return null;
    }
  }
}

@freezed
class Imageries with _$Imageries {
  const factory Imageries({
    @Default(<Imagery>[]) final List<Imagery> imageryCache,
  }) = _Imageries;

  factory Imageries.fromJson(Map<String, dynamic> json) =>
      _$ImageriesFromJson(json);
  const Imageries._();
  int get length => imageryCache.length;
}

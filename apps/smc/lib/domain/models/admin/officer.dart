// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: constant_identifier_names

part of '../models.dart';

@freezed
class Staff with _$Staff {
  const factory Staff({
    required final String id,
    required final StaffType staffType,
    required final String name,
    required final int payScale,
  }) = _Staff;
  const Staff._();
  factory Staff.fromJson(json) => _$StaffFromJson(json);
  int get salary => payScale * 5000;
}

enum StaffType {
  MD,
  TECHNICIAN,
  LHV,
  PHYSICIAN,
  RADIOLOGIST,
  DENTIST;
}

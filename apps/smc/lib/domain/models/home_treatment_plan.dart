part of 'models.dart';

@freezed
class HomeTreatmentPlan with _$HomeTreatmentPlan {
  const factory HomeTreatmentPlan({
    required final Map<String, Prescription> homeTreatment,
  }) = _HomeTreatmentPlan;
  factory HomeTreatmentPlan.fromJson(json) => _$HomeTreatmentPlanFromJson(json);
  factory HomeTreatmentPlan.init() => HomeTreatmentPlan(homeTreatment: {});
}

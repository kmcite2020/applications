import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

import '../chapters_page/chapter.dart';
import '../core/core.dart';

part 'topics.freezed.dart';
part 'topics.g.dart';

@freezed
class Topics with _$Topics {
  factory Topics({
    required final Map<String, Topic> topics,
  }) = _Topics;
  factory Topics.fromJson(json) => _$TopicsFromJson(json);
  factory Topics.init() => Topics(topics: {});
}

@freezed
class Topic with _$Topic {
  factory Topic({
    required final String id,
    required final Chapter chapter,
    required final Diagnosis diagnosis,
    required final List<String> riskFactors,
    required final List<String> causes,
    required final String name,
    required final List<Content> descriptions,
    required final Signs signs,
    required final String definition,
    required final String epidemiology,
    required final List<String> symptoms,
    required final List<String> complications,
    required final List<String> investigations,
    required final List<Management> emergencyManagement,
    required final List<Management> homeManagement,
    required final bool editing,
  }) = _Topic;

  factory Topic.init() => Topic(
        id: randomId,
        chapter: Chapter.emergency,
        diagnosis: Diagnosis.init(),
        riskFactors: [],
        causes: [],
        name: '',
        descriptions: [],
        signs: Signs.init(),
        definition: '',
        epidemiology: '',
        symptoms: [],
        complications: [],
        investigations: [],
        emergencyManagement: [],
        homeManagement: [],
        editing: true,
      );

  factory Topic.fromJson(json) => _$TopicFromJson(json);

  static List<Topic> fromListJson(String source) {
    final List result = json.decode(source) as List;
    return result.map((e) => Topic.fromJson(e)).toList();
  }

  static String toListJson(List<Topic> topics) {
    final List result = topics.map((e) => e.toJson()).toList();
    return json.encode(result);
  }
}

@freezed
class Signs with _$Signs {
  const factory Signs({
    required final String eye,
    required final String ent,
    required final String cns,
    required final String cvs,
    required final String pulmo,
    required final String gu,
    required final String gi,
    required final VitalsSigns vitalsSigns,
  }) = _Signs;
  factory Signs.init() => Signs(
        eye: '',
        ent: '',
        cns: '',
        cvs: '',
        pulmo: '',
        gu: '',
        gi: '',
        vitalsSigns: VitalsSigns.init(),
      );
  factory Signs.fromJson(json) => _$SignsFromJson(json);
}

@freezed
class VitalsSigns with _$VitalsSigns {
  factory VitalsSigns({
    required final Temperature temperature,
    required final BloodPressure bloodPressure,
    required final int respiratoryRate,
    required final int saturation,
  }) = _VitalsSigns;
  factory VitalsSigns.init() => VitalsSigns(
        temperature: Temperature(temperature: 0),
        bloodPressure: BloodPressure(systolic: 130, diastolic: 80),
        respiratoryRate: 20,
        saturation: 98,
      );
  factory VitalsSigns.fromJson(json) => _$VitalsSignsFromJson(json);
}

@freezed
class BloodPressure with _$BloodPressure {
  factory BloodPressure({
    required final int systolic,
    required final int diastolic,
  }) = _BloodPressure;
  factory BloodPressure.fromJson(json) => _$BloodPressureFromJson(json);
}

@freezed
class Temperature with _$Temperature {
  const Temperature._();
  const factory Temperature({
    required final double temperature,
  }) = _Temperature;
  factory Temperature.fromJson(json) => _$TemperatureFromJson(json);
  double get temperatureInKelvin => temperature;
  double get temperatureInCentigrade => temperature - 273.15;
  double get temperatureInFahrenheit => (temperature * 9 / 5) - 459.67;
}

@freezed
class Management with _$Management {
  factory Management({
    required final String medicine,
    required final String dose,
    required final String instructions,
  }) = _Management;
  factory Management.fromJson(json) => _$ManagementFromJson(json);
}

enum Investigation { CBC, LFT, RFT, SE }

@freezed
class Content with _$Content {
  const factory Content({
    required final String title,
    final String? text,
    final String? path,
  }) = _Content;

  const Content._();

  factory Content.fromJson(json) => _$ContentFromJson(json);
  factory Content.image(String title, String path) => Content(
        title: title,
        path: path,
      );
  factory Content.text(String title, String text) => Content(
        title: title,
        text: text,
      );
  bool get isText => text != null;
  bool get isImage => path != null;
}

@freezed
class Diagnosis with _$Diagnosis {
  factory Diagnosis({
    required final String definiteDiagnosis,
    required final List<String> provisionalDiagnosis,
  }) = _Diagnosis;
  factory Diagnosis.init() {
    return Diagnosis(
      definiteDiagnosis: '',
      provisionalDiagnosis: [],
    );
  }
  factory Diagnosis.fromJson(json) => _$DiagnosisFromJson(json);
}

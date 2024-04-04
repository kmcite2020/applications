import 'package:doctor_on_duty/features/topics/topics_manager.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../chapters_page/chapter.dart';
import '../core/core.dart';
import 'topics.dart';

class AddTopicBloc {
  void saveTopic() {
    topicsManager.setTopic((_) => topic);
    navigator.back();
  }

  final topicRM = RM.inject<Topic>(
    () => Topic.init(),
  );

  Topic get topic => topicRM.state;

  void setTopic(Topic Function(Topic topic) modifier) =>
      topicRM.state = modifier(topicRM.state);

  void setName(String name) => setTopic(
        (topic) => topic.copyWith(name: name),
      );

  void setDiagnosis(Diagnosis Function(Diagnosis diagnosis) diagnosis) =>
      setTopic(
          (topic) => topic.copyWith(diagnosis: diagnosis(topic.diagnosis)));

  void setDefiniteDiagnosis(String definiteDiagnosis) => setDiagnosis(
        (diagnosis) => diagnosis.copyWith(definiteDiagnosis: definiteDiagnosis),
      );

  void setProvisionalDiagnoses(List<String> provisionalDiagnoses) =>
      setDiagnosis(
        (diagnosis) =>
            diagnosis.copyWith(provisionalDiagnosis: provisionalDiagnoses),
      );

  void setDefinition(String definition) =>
      setTopic((topic) => topic.copyWith(definition: definition));

  void setEpidemiology(String epidemiology) =>
      setTopic((topic) => topic.copyWith(epidemiology: epidemiology));

  void setSymptoms(List<String> symptoms) =>
      setTopic((topic) => topic.copyWith(symptoms: symptoms));

  /// Signs
  void _setSigns(Signs Function(Signs signs) signs) =>
      setTopic((topic) => topic.copyWith(signs: signs(topic.signs)));

  void setEyeSigns(String eye) =>
      _setSigns((signs) => signs.copyWith(eye: eye));

  void setEntSigns(String ent) =>
      _setSigns((signs) => signs.copyWith(ent: ent));

  void setCnsSigns(String cns) =>
      _setSigns((signs) => signs.copyWith(cns: cns));

  void setCvsSigns(String cvs) =>
      _setSigns((signs) => signs.copyWith(cvs: cvs));

  void setPulmoSigns(String pulmo) =>
      _setSigns((signs) => signs.copyWith(pulmo: pulmo));

  void setGuSigns(String gu) => _setSigns((signs) => signs.copyWith(gu: gu));

  void setGiSigns(String gi) => _setSigns((signs) => signs.copyWith(gi: gi));

  void setVitalSigns(
          VitalsSigns Function(VitalsSigns vitalsSigns) vitalsSigns) =>
      _setSigns((signs) =>
          signs.copyWith(vitalsSigns: vitalsSigns(signs.vitalsSigns)));

  void setTemperature(
          Temperature Function(Temperature temperature) temperature) =>
      setVitalSigns((vitalsSigns) => vitalsSigns.copyWith(
          temperature: temperature(vitalsSigns.temperature)));

  void setTemperatureValue(double temperatureValue) => setTemperature(
      (temperature) => temperature.copyWith(temperature: temperatureValue));

  void setBloodPressure(
          BloodPressure Function(BloodPressure bloodPressure) bloodPressure) =>
      setVitalSigns((vitalsSigns) => vitalsSigns.copyWith(
          bloodPressure: bloodPressure(vitalsSigns.bloodPressure)));

  void setSystolicBP(int pressure) => setBloodPressure(
      (bloodPressure) => bloodPressure.copyWith(systolic: pressure));

  void setDiastolicBP(int pressure) => setBloodPressure(
      (bloodPressure) => bloodPressure.copyWith(diastolic: pressure));

  void setRespiratoryRate(int respiratoryRate) => setVitalSigns(
      (vitalsSigns) => vitalsSigns.copyWith(respiratoryRate: respiratoryRate));

  void setSaturation(int saturation) => setVitalSigns(
      (vitalsSigns) => vitalsSigns.copyWith(saturation: saturation));

  void setDescriptions(
    List<Content> Function(List<Content> descriptions) descriptions,
  ) {
    setTopic(
      (topic) => topic.copyWith(
        descriptions: descriptions(topic.descriptions),
      ),
    );
  }

  void addDescription(Content content) {
    setDescriptions((descriptions) => [...descriptions]..add(content));
  }

  void removeDescription(Content content) {
    setDescriptions((descriptions) => [...descriptions]..remove(content));
  }

  void setRiskFactors(List<String> riskFactors) {
    setTopic((topic) => topic.copyWith(riskFactors: riskFactors));
  }

  void setCauses(List<String> causes) {
    setTopic((topic) => topic.copyWith(causes: causes));
  }

  void setComplications(List<String> complications) {
    setTopic((topic) => topic.copyWith(complications: complications));
  }

  void setInvestigations(List<String> investigations) {
    setTopic((topic) => topic.copyWith(investigations: investigations));
  }

  void setHomeManagement(
    List<Management> Function(
      List<Management> homeManagement,
    ) homeManagement,
  ) =>
      setTopic(
        (topic) => topic.copyWith(
          homeManagement: homeManagement(topic.homeManagement),
        ),
      );
  void addHomeManagement(Management management) {
    setHomeManagement(
      (homeManagement) => [...homeManagement]..add(management),
    );
  }

  void removeHomeManagement(Management management) {
    setHomeManagement(
      (homeManagement) => [...homeManagement]..remove(management),
    );
  }

  void setEmergencyManagement(
    List<Management> Function(
      List<Management> emergencyManagement,
    ) emergencyManagement,
  ) =>
      setTopic((topic) => topic.copyWith(
          emergencyManagement: emergencyManagement(topic.emergencyManagement)));

  void addEmergencyManagement(Management management) {
    setEmergencyManagement(
      (emergencyManagement) => [...emergencyManagement]..add(management),
    );
  }

  void removeEmergencyManagement(Management management) {
    setEmergencyManagement(
      (emergencyManagement) => [...emergencyManagement]..remove(management),
    );
  }

  void setChapter(Chapter? chapter) {
    setTopic((topic) => topic.copyWith(chapter: chapter!));
  }
}

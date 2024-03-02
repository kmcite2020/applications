// ignore_for_file: public_member_api_docs, sort_constructors_first
// import 'package:project_hmis/domain/domain.dart';
// import 'package:states_rebuilder/states_rebuilder.dart';

// final DefaultInvestigations defaultInvestigations = DefaultInvestigations();

// class DefaultInvestigations {
//   final _defaultInvestigations = RM.inject(
//     () => _investigations,
//   );

//   List<Investigation> get investigations {
//     return _defaultInvestigations.state;
//   }

//   void setInvestigations(List<Investigation> value) {
//     _defaultInvestigations.state = value;
//   }

//   void addInvestigation(Investigation value) {
//     setInvestigations([...investigations, value]);
//   }

//   void removeInvestigation(Investigation investigation) {
//     setInvestigations([...investigations]..remove(investigation));
//   }

//   void removeAllInvestigations() => setInvestigations([]);

//   static final _investigations = [
//     Investigation()
//       ..name = 'CBC'
//       ..price = 100,
//     Investigation()
//       ..name = 'RBS'
//       ..price = 50,
//     Investigation()
//       ..name = 'Urea'
//       ..price = 100,
//     Investigation()
//       ..name = 'Creatinine'
//       ..price = 100,
//     Investigation()
//       ..name = 'Malarial Parasite'
//       ..price = 100,
//     Investigation()
//       ..name = 'Dengue NS-1'
//       ..price = 300,
//     Investigation()
//       ..name = 'ECG'
//       ..price = 2500,
//     Investigation()
//       ..name = 'CT Brain with Bone Window'
//       ..price = 3000,
//     Investigation()
//       ..name = 'X-ray'
//       ..price = 300,
//     Investigation()
//       ..name = 'Viral Profile'
//       ..price = 300,
//     Investigation()
//       ..name = 'UPT'
//       ..price = 100,
//     Investigation()
//       ..name = 'Ultrasound'
//       ..price = 400,
//     Investigation()
//       ..name = 'Urine RE'
//       ..price = 100,
//   ];
// }

// class XRay extends Investigation {}

part of '../presentation.dart';

// final investigationsBlocRM = RM.inject(
//   () => InvestigationsBloc(),
// );
// final investigationsBloc = InvestigationsBloc();

// class InvestigationsBloc {
//   final investigationsRM = RM.inject<Investigations>(
//     () => {},
//   );
//   Investigations get investigations => investigationsRM.state;
//   void setInvestigations(Investigations value) => investigationsRM.state = value;

//   void addInvestigation(Investigation value) async {
//     setInvestigations(
//       {}
//         ..addAll(investigations)
//         ..[value.id] = value,
//     );
//   }

//   void removeInvestigation(Investigation value) async {
//     setInvestigations(
//       {}
//         ..addAll(investigations)
//         ..remove(value.id),
//     );
//   }

//   void removeAllInvestigations() async {
//     setInvestigations({});
//   }

//   void addDefaultInvestigations() {
//     setInvestigations(
//       defaultInvestigations.getDefaultInvestigations(),
//     );
//   }
// }

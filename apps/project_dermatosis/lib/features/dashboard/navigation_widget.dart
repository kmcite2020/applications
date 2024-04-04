// // ignore_for_file: public_member_api_docs, sort_constructors_first
// part of '../ui.dart';

// class NavigationWidget extends ReactiveStatelessWidget {
//   const NavigationWidget({
//     super.key,
//     required this.navigationItem,
//   });
//   final NavigationItem navigationItem;
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.all(configurationBloc.configuration.padding),
//       child: InkWell(
//         onTap: () {
//           router.toDeeply(navigationItem.name);
//         },
//         borderRadius: BorderRadius.circular(
//           configurationBloc.configuration.borderRadius,
//         ),
//         child: Stack(
//           children: [
//             Align(
//               alignment: Alignment.center,
//               child: FaIcon(
//                 navigationItem.icon,
//                 size: 80,
//               ),
//             ),
//             Align(
//               alignment: Alignment.bottomCenter,
//               child: Padding(
//                 padding:
//                     EdgeInsets.all(configurationBloc.configuration.padding),
//                 child: Text(navigationItem.name),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

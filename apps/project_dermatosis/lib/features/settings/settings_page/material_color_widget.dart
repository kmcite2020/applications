// part of '../ui.dart';

// class MaterialColorWidget extends ReactiveStatelessWidget {
//   const MaterialColorWidget({
//     super.key,
//     required this.materialColor,
//   });
//   final MaterialColor materialColor;
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.all(
//         configurationBloc.configuration.padding,
//       ),
//       child: FilledButton(
//         style: FilledButton.styleFrom(
//           backgroundColor: materialColor,
//           padding: EdgeInsets.all(configurationBloc.configuration.padding),
//         ),
//         onPressed:
//             configurationBloc.configuration.materialColor == materialColor
//                 ? null
//                 : () => configurationBloc.setMaterialColor(
//                       materialColor,
//                     ),
//         child: FaIcon(FontAwesomeIcons.campground),
//       ),
//     );
//   }
// }

// // ignore_for_file: prefer_const_constructors, file_names

// import 'package:dashboard/apps/googleFontsViewerApp/ReactiveModels.dart';
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:states_rebuilder/states_rebuilder.dart';

// import '../../core/reactiveModels.dart';

// class FontsViewer extends ReactiveStatelessWidget {
//   const FontsViewer({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//       physics: BouncingScrollPhysics(),
//       itemCount: visiblity ? fonts.length : 8,
//       itemBuilder: (context, index) => Card(
//         color: color,
//         child: RadioListTile<String?>(
//           title: Text(
//             fonts[index],
//             style: GoogleFonts.getFont(fonts[index]),
//           ),
//           value: fonts[index],
//           groupValue: font,
//           onChanged: (value) => font = value,
//           secondary: CircleAvatar(
//             child: Text(
//               (index + 1).toString(),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// // ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, sized_box_for_whitespace, sort_child_properties_last

// import 'package:flutter/material.dart';
// import 'package:states_rebuilder/states_rebuilder.dart';
// import 'package:uuid/uuid.dart';

// import '../components/widgets.dart';
// import '../core.dart';
// import '../custom_drawer.dart';
// import 'profile.dart';

// class Dashboard extends ReactiveStatelessWidget {
//   @override
//   Widget build(
//     BuildContext context,
//   ) {
//     return Scaffold(
//       drawer: CustomDrawer(),
//       appBar: AppBar(
//         title: Text('Dashboard'),
//         centerTitle: true,
//         automaticallyImplyLeading: true,
//       ),
//       body: ListView(
//         shrinkWrap: true,
//         children: [
//           Statistics(),
//           CardTile(
//             onTap: () {
//               //  store.deleteFromDisk();
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                   builder: (_) => ProfilePage(),
//                 ),
//               );
//             },
//             leading: CircleAvatar(
//               child: Icon(Icons.verified_user),
//             ),
//             title: Text(name),
//             subtitle: Text(subscription.name),
//             trailing: CircleAvatar(
//               child: Text(
//                 endSubscription.difference(DateTime.now()).inDays.toString(),
//               ),
//             ),
//           ),
//           ListView(
//             shrinkWrap: true,
//             children: [
//               CardTile(
//                 leading: Icon(Icons.book),
//                 onTap: () => openSubjects(context),
//                 title: Text('Subjects - Books'),
//               ),
//               CardTile(
//                 leading: Icon(Icons.play_lesson),
//                 onTap: () => openSyllabus(context),
//                 title: Text('Syllabus'),
//               ),
//               CardTile(
//                 leading: Icon(Icons.quiz),
//                 onTap: () => openQuiz(context),
//                 title: Text('Quizzes'),
//               ),
//               CardTile(
//                 leading: Icon(Icons.subscriptions),
//                 onTap: () => openSubscriptions(context, subscription.name),
//                 title: Text('Subscription'),
//               ),
//             ],
//           ),
//         ],
//       ),
//       floatingActionButton: Column(
//         mainAxisAlignment: MainAxisAlignment.end,
//         children: [
//           Card(
//             child: ButtonBar(
//               children: [
//                 FloatingActionButton(
//                     heroTag: Uuid().v1(), tooltip: 'disclaimer', onPressed: () => openSearch(context), child: Icon(Icons.handshake)),
//                 FloatingActionButton(
//                   heroTag: Uuid().v1(),
//                   tooltip: 'about',
//                   onPressed: () => Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                       builder: (_) => ProfilePage(),
//                     ),
//                   ),
//                   child: Icon(Icons.info),
//                 ),
//                 FloatingActionButton(
//                   heroTag: Uuid().v1(),
//                   tooltip: 'privacy',
//                   onPressed: null,
//                   child: Icon(Icons.privacy_tip),
//                 ),
//                 FloatingActionButton(
//                   heroTag: Uuid().v1(),
//                   tooltip: 'copyrights',
//                   onPressed: null,
//                   child: Icon(Icons.copyright),
//                 ),
//               ],
//             ),
//           ),
//           Card(
//             child: ButtonBar(
//               children: [
//                 FloatingActionButton(
//                   heroTag: Uuid().v1(),
//                   tooltip: 'search',
//                   onPressed: () => openSearch(context),
//                   child: Icon(Icons.search),
//                 ),
//                 FloatingActionButton(
//                   heroTag: Uuid().v1(),
//                   tooltip: 'profile',
//                   onPressed: () => Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                       builder: (_) => ProfilePage(),
//                     ),
//                   ),
//                   child: Icon(Icons.people),
//                 ),
//                 FloatingActionButton(
//                   heroTag: Uuid().v1(),
//                   tooltip: 'settings',
//                   onPressed: () => openSettings(context),
//                   child: Icon(Icons.settings),
//                 ),
//                 FloatingActionButton(
//                   heroTag: Uuid().v1(),
//                   tooltip: 'logout',
//                   onPressed: () => signout(context),
//                   child: Icon(Icons.logout),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

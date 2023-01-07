// // ignore_for_file: prefer_const_constructors, dead_code, avoid_print, unused_element, unused_import

// import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:states_rebuilder/scr/state_management/rm.dart';

// import 'FCPS.dart';
// import 'pages/dashboard.dart';
// import 'pages/quizzes.dart';
// import 'pages/search.dart';
// import 'pages/settings.dart';
// import 'pages/signin.dart';
// import 'pages/signup.dart';
// import 'pages/subjects.dart';
// import 'pages/subscription.dart';
// import 'pages/syllabus.dart';

// // implementing subscriptions
// enum Subscription {
//   free('30 days', 0),
//   twoMonths('2 months', 100),
//   sixMonths('6 months', 300),
//   lifeTime('About 14 years', 1000);

//   const Subscription(this.name, this.price);
//   final String name;
//   final int price;
// }

// final subscriptionRM = RM.inject<Subscription>(
//   () => Subscription.free,
//   persist: () => PersistState(
//     key: 'SUBSCRIPTION',
//     toJson: (s) => jsonEncode(Subscription.values.indexOf(s)),
//     fromJson: (json) => Subscription.values[jsonDecode(json)],
//   ),
// );
// Subscription get subscription => subscriptionRM.state;
// set subscription(value) => subscriptionRM.state = value;

// DateTime startSubscription = DateTime.now();
// DateTime endSubscription = DateTime.now().add(Duration(days: 30));

// void buySubscription(value) {
//   switch (value) {
//     case Subscription.free:
//       endSubscription = startSubscription.add(Duration(days: 30));
//       break;
//     case Subscription.twoMonths:
//       endSubscription = startSubscription.add(Duration(days: 60));
//       break;

//     case Subscription.sixMonths:
//       endSubscription = startSubscription.add(Duration(days: 180));
//       break;
//     case Subscription.lifeTime:
//       endSubscription = startSubscription.add(
//         Duration(days: 5000),
//       );
//   }
//   subscription = value;
//   startSubscription = DateTime.now();
// }

// openSubscriptions(context, String subscription) {
//   Navigator.push(
//     context,
//     MaterialPageRoute(
//       builder: (_) => SubscriptionPage(
//         subscription: subscription,
//       ),
//     ),
//   );
// }

// // login implementation
// final _name = RM.inject(() => 'Adnan Farooq');

// String get name => _name.state;

// set name(value) {
//   _name.state = value;
// }

// final _email = RM.inject(() => 'adn@gmail.com');

// String get email => _email.state;

// set email(value) {
//   _email.state = value;
//   // store.put('email', value);
// }

// final _city = RM.inject(() => 'Swabi');

// String get city => _city.state;

// set city(value) {
//   _city.state = value;
//   // store.put('city', value);
// }

// String speciality = 'Radiology';
// String username = 'admin';
// String password = '123456';
// var usernameC = TextEditingController();
// var passwordC = TextEditingController();
// var nameC = TextEditingController();
// var emailC = TextEditingController();
// var cityC = TextEditingController();
// var specialityC = TextEditingController();
// bool isLogged = false;
// bool isForgot = false;

// signupUser(context) async {
//   name = nameC.text;
//   email = emailC.text;
//   city = cityC.text;
//   speciality = specialityC.text;
//   username = usernameC.text;
//   password = passwordC.text;
//   // store.put('name', name);
//   // store.put('email', email);
//   // store.put('city', city);
//   // store.put('speciality', speciality);
//   // store.put('username', username);
//   // store.put('password', password);
//   openDashboard(context);
// }

// forgotPassword(context) async {
//   // store.put('username', usernameC.text);
//   // store.put('password', passwordC.text);
//   username = usernameC.text;
//   password = passwordC.text;
//   // update();
//   openDashboard(context);
// }

// signin(context) async {
//   if (usernameC.text == username && passwordC.text == password) {
//     isLogged = true;
//     openDashboard(context);
//   } else {
//     isLogged = true; // TODO - revert to false
//     openSignin(context);
//   }
//   // store.put('isLogged', isLogged);
//   // update();
// }

// signout(context) async {
//   isLogged = false;
//   // store.put('isLogged', isLogged);
//   openSignin(context);
//   // update();
// }

// // pages navigation

// openSignin(context) {
//   Navigator.push(
//     context,
//     MaterialPageRoute(
//       builder: (_) => SigninPage(),
//     ),
//   );
// }

// openSignup(context, isForgot) {
//   Navigator.push(
//     context,
//     MaterialPageRoute(
//       builder: (_) => SignupPage(
//         isForgot: isForgot,
//       ),
//     ),
//   );
// }

// openSettings(context) {
//   Navigator.push(
//     context,
//     MaterialPageRoute(
//       builder: (_) => SettingsPage(),
//     ),
//   );
// }

// openSubjects(context) {
//   Navigator.push(
//     context,
//     MaterialPageRoute(
//       builder: (_) => SubjectsPage(),
//     ),
//   );
// }

// openDashboard(context) {
//   Navigator.push(
//     context,
//     MaterialPageRoute(
//       builder: (_) => Dashboard(),
//     ),
//   );
// }

// var listOfSubjects = [
//   'Biochemistry',
//   'Physiology',
//   'Anatomy',
//   'Biostatistics',
//   'Embryology',
//   'General Anatomy',
//   'Histology',
//   'Microbiology',
//   'General Pathology',
//   'Pharmacology',
//   'Special Pathology'
// ];

// openSyllabus(context) {
//   Navigator.push(
//     context,
//     MaterialPageRoute(
//       builder: (_) => SyllabusPage(),
//     ),
//   );
// }

// openSearch(context) {
//   Navigator.push(
//     context,
//     MaterialPageRoute(
//       builder: (_) => SearchPage(),
//     ),
//   );
// }

// openQuiz(context) {
//   Navigator.push(
//     context,
//     MaterialPageRoute(
//       builder: (_) => QuizzesPage(),
//     ),
//   );
// }

// void deleteAllDataFromDisk(context) {
//   // store.erase();
//   // Phoenix.rebirth(context);
// }

// final _selectedCity = RM.inject(() => listOfCities.first);

// String? get selectedCity => _selectedCity.state;

// set selectedCity(value) {
//   _selectedCity.state = value;
//   // store.put('city', value);
// }

// final listOfCities = [
//   'Abbottabad',
//   'Bajaur',
//   'Bannu',
//   'Batagram',
//   'Buner',
//   'Charsadda',
//   'Dera Ismail Khan',
//   'Hangu',
//   'Haripur',
//   'Karak',
//   'Khyber',
//   'Kohat',
//   'Kolai Pallas',
//   'Kurram',
//   'Lakki Marwat',
//   'Lower Chitral',
//   'Lower Dir',
//   'Lower Kohistan',
//   'Malakand',
//   'Mansehra',
//   'Mardan',
//   'Mohmand',
//   'North Waziristan',
//   'Nowshera',
//   'Orakzai',
//   'Peshawar',
//   'Shangla',
//   'South Waziristan',
//   'Swabi',
//   'Swat',
//   'Tank',
//   'Tor Ghar',
//   'Upper Chitral',
//   'Upper Dir',
//   'Upper Kohistan',
// ];

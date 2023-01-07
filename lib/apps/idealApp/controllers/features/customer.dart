// // ignore_for_file: prefer_const_constructors

// import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:states_rebuilder/states_rebuilder.dart';
// import 'package:uuid/uuid.dart';

// class CustomerModel {
//   final String name;
//   final String city;
//   final String id;

//   CustomerModel({
//     required this.name,
//     required this.city,
//     required this.id,
//   });

//   CustomerModel copyWith({
//     String? id,
//     String? name,
//     String? city,
//   }) {
//     return CustomerModel(
//       id: id ?? this.id,
//       name: name ?? this.name,
//       city: city ?? this.city,
//     );
//   }

//   Map<String, dynamic> toMap() {
//     return {
//       'name': name,
//       'city': city,
//       'id': id,
//     };
//   }

//   factory CustomerModel.fromMap(Map<String, dynamic> map) {
//     return CustomerModel(
//       name: map['name'],
//       city: map['city'],
//       id: map['id'],
//     );
//   }

//   factory CustomerModel.fromJson(String source) => CustomerModel.fromMap(json.decode(source));

//   String toJson() => json.encode(toMap());
//   static List<CustomerModel> fromListJson(String source) {
//     final List result = json.decode(source) as List;
//     return result.map((e) => CustomerModel.fromJson(e)).toList();
//   }

//   static String toListJson(List<CustomerModel> counters) {
//     final List result = counters.map((e) => e.toJson()).toList();
//     return json.encode(result);
//   }

//   @override
//   String toString() => '$name,$city,$id';
//   static const icon = Icon(Icons.people);

//   static const label = 'CUSTOMERS';
//   static String emptyListInfo =
//       'Currently there are no customers available in the list. Kindly try adding some customers using the corner emoji button.';
// }

// final Injected<List<CustomerModel>> customers = RM.inject(
//   () => [],
//   persist: () => PersistState(
//     debugPrintOperations: true,
//     key: 'customers',
//     fromJson: (source) => CustomerModel.fromListJson(source),
//     toJson: (state) => CustomerModel.toListJson(state),
//     catchPersistError: true,
//   ),
// );

// final addCustomerForm = RM.injectForm(
//   autovalidateMode: AutovalidateMode.always,
//   submit: () async {
//     addCustomer();
//     RM.navigate.back();
//   },
// );

// void addCustomer() {
//   String id = Uuid().v1();
//   customers.state = [
//     ...customers.state,
//     CustomerModel(
//       id: id,
//       name: name.value,
//       city: city.value,
//     ),
//   ];
// }

// void removeCustomers(String id) {
//   customers.state = [
//     for (final customer in customers.state)
//       if (customer.id != id) customer
//   ];
// }

// final cities = [
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
//   'Upper Kohistan'
// ];
// final city = RM.injectFormField<String>(cities.first);
// final name = RM.injectTextEditing(
//   validators: [
//     (text) {
//       if (text!.length < 6) {
//         return 'name should be at least 6 characters long';
//       } else {
//         return null;
//       }
//     }
//   ],
// );


// final pearlsRepository = PearlsRepository();

// final databases = Databases(client);

// class PearlsRepository {
//   final databaseID = '65b64d0ccd7498ccfe03';
//   final collectionID = '65b64d28b685bfe6e46a';
//   Future<void> createPearl(Pearl pearl) => databases.createDocument(
//         databaseId: databaseID,
//         collectionId: collectionID,
//         documentId: pearl.id,
//         data: pearl.toJson(),
//       );

//   Future<List<Pearl>> getPearls() {
//     return databases.listDocuments(
//       databaseId: databaseID,
//       collectionId: collectionID,
//       queries: [
//         Query.limit(502),
//       ],
//     ).then(
//       (listDocuments) {
//         return listDocuments.documents.map(
//           (e) {
//             return Pearl.fromJson(e.data);
//           },
//         ).toList();
//       },
//     );
//   }

//   Future<Pearl> getPearl(String id) {
//     return databases
//         .getDocument(
//       databaseId: databaseID,
//       collectionId: collectionID,
//       documentId: id,
//     )
//         .then(
//       (value) {
//         return Pearl.fromJson(value.data);
//       },
//     );
//   }

//   Future<void> deletePearl(String id) => databases.deleteDocument(
//         databaseId: databaseID,
//         collectionId: collectionID,
//         documentId: id,
//       );
//   Future<Pearl> updatePearl(
//     String id, {
//     Map<dynamic, dynamic>? data,
//   }) {
//     return databases
//         .updateDocument(
//       databaseId: databaseID,
//       collectionId: collectionID,
//       documentId: id,
//       data: data,
//     )
//         .then(
//       (value) {
//         return Pearl.fromJson(value.data);
//       },
//     );
//   }
// }

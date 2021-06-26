import 'package:cloud_firestore/cloud_firestore.dart';

class BoardManager {
  final CollectionReference suitList =
      FirebaseFirestore.instance.collection('Suits');

  Future boardData(
      String name, String image, String description, String id) async {
    return await suitList.doc(id).set(
      {
        'name': name,
        'image': image,
        'description': description,
      },
    );
  }
}

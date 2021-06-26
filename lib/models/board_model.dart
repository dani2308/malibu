import 'package:cloud_firestore/cloud_firestore.dart';

class BoardManager {
  final CollectionReference boardList =
      FirebaseFirestore.instance.collection('Boards');

  Future boardData(
      String name, String image, String description, String id) async {
    return await boardList.doc(id).set(
      {
        'name': name,
        'image': image,
        'description': description,
      },
    );
  }
}

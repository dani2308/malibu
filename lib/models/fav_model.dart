import 'package:cloud_firestore/cloud_firestore.dart';

class AppFormService {
  submitForm(
    String image,
    String name,
    double price,
    String description,
  ) async {
    CollectionReference boards =
        FirebaseFirestore.instance.collection('Fav');

    print("Chegou aqui");
    await boards.add(
      {
        'image': image,
        'name': name,
        'price': price,
        'description': description,
      },
    );

    print("Chegou key");
  }
}
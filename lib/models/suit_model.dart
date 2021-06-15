import 'package:cloud_firestore/cloud_firestore.dart';

class AppFormService {
  submitForm(
    String image,
    String name,
    double price,
    String description,
  ) async {
    CollectionReference suits = FirebaseFirestore.instance.collection('Suits');

    print("Chegou aqui");
    await suits.add(
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

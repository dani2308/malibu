import 'package:cloud_firestore/cloud_firestore.dart';

class AppFormService {
  submitForm(
    String teachers,
    String type,
    String spot,
    String encounter,
    String hour,
  ) async {
    CollectionReference classes =
        FirebaseFirestore.instance.collection('Classes');

    print("Chegou aqui");
    await classes.add(
      {
        'teachers': teachers,
        'type': type,
        'spot': spot,
        'encounter': encounter,
        'hour': hour,
      },
    );

    print("Chegou key");
  }
}

import 'package:cloud_firestore/cloud_firestore.dart';

class ClassSubmitService {
  classSumbit(
    String teacher1,
    String teacher2,
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
        'teacher1': teacher1,
        'teacher2': teacher2,
        'type': type,
        'spot': spot,
        'encounter': encounter,
        'hour': hour,
      },
    );

    print("Chegou key");
  }
}

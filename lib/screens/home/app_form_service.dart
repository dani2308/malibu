import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:malibu/screens/home/appform_screen.dart';

class AppFormService {
  submitForm(
    String name,
    int idade,
    Swim swim,
    Gender gender,
    Awnswer awnswer,
    Awnswer1 awnswer1,
  ) async {
    CollectionReference users = FirebaseFirestore.instance.collection('users');

    await users.add(
      {
        'name': name,
        'idade': idade,
        'gender': gender,
        'new_in_school': awnswer.toString(),
        'practices_sport': awnswer1.toString(),
        'swim': swim.toString(),
      },
    );
  }
}

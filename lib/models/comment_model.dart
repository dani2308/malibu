import 'package:cloud_firestore/cloud_firestore.dart';

class AppFormService {
  submitForm(
    String post,
  ) async {
    CollectionReference comment =
        FirebaseFirestore.instance.collection('Comment');

    print("Chegou aqui");
    await comment.add(
      {
        'post': post,
      },
    );

    print("Chegou key");
  }
}

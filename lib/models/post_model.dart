import 'package:cloud_firestore/cloud_firestore.dart';

class AppFormService {
  submitForm(
    String post,
    String image,
  ) async {
    CollectionReference post = FirebaseFirestore.instance.collection('Post');

    print("Chegou aqui");
    await post.add(
      {
        'post': post,
        'image': image,
      },
    );

    print("Chegou key");
  }
}

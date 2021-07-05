import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';


class PostFormService {
  sumbitForm(
    String description,
    File postImage,
  ) async {
    String fileName = postImage.path.split('/').last;
    String destination = 'posts/$fileName';

    final ref = FirebaseStorage.instance.ref(destination);
    UploadTask insertion = ref.putFile(postImage);

    String downloadUrl = '';

    TaskSnapshot upLoadedFile = await ref.putFile(postImage);

    if (upLoadedFile.state == TaskState.success) {
      downloadUrl = await ref.getDownloadURL();
    }

    CollectionReference users = FirebaseFirestore.instance.collection('Posts');

    print("Chegou aqui");
    await users.add(
      {
        'description': description.toString(),
        'image': downloadUrl,
      },
    );

    print("Chegou key");
  }
}

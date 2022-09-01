import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';

class UploadFile {
  static Future<String?> upload(
    String path,
    String fileName,
    String filePath,
  ) async {
    // Create a storage reference from our app
    final storageRef = FirebaseStorage.instance.ref(path);
    final fileRef = storageRef.child(fileName);
    File file = File(filePath);
    await fileRef.putFile(file);
    final downloadURL = await fileRef.getDownloadURL();
    return downloadURL;
  }
}

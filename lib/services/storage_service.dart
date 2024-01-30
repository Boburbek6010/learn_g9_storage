import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';

class StorageService{

  static const String pathStudents = "students";

  static final storage = FirebaseStorage.instance;

  static Future<String> upload(String path, File file)async{
    final Reference reference = storage.ref(path).child("${DateTime.now().toIso8601String()}${file.path.substring(file.path.lastIndexOf("."))}");
    UploadTask task = reference.putFile(file);
    await task.whenComplete(() {});
    return reference.getDownloadURL();
  }

  static Future<List<String>> getData(String path)async{
    List<String> itemList = [];
    final Reference reference = storage.ref(path);
    final ListResult list = await reference.listAll();
    for (var e in list.items) {
      itemList.add(await e.getDownloadURL());
    }
    return itemList;
  }

  static Future<void> delete(String url)async{
    final Reference reference = storage.refFromURL(url);
    await reference.delete();
  }

}
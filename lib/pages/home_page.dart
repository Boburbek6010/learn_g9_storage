import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:learn_g9_storage/services/storage_service.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  File file = File("");
  List<String> list = [];
  bool isLoading = false;

  Future<File> getImage()async{
    final ImagePicker picker = ImagePicker();
    XFile? xFile = await picker.pickImage(source: ImageSource.gallery);
    if(xFile != null){
      setState(() {
        isLoading = false;
        File getFile = File(xFile.path);
        file = getFile;
      });
    }
    return file;
  }

  Future<String> uploadData()async{
    String url = await StorageService.upload(StorageService.pathStudents, await getImage());
    isLoading = false;
    setState(() {});
    await getAllData();
    return url;
  }

  Future<void> getAllData()async{
    isLoading = false;
    setState(() {});
    list = await StorageService.getData(StorageService.pathStudents);
    isLoading = true;
    setState(() {});
  }

  Future<void>delete(String url)async{
    await StorageService.delete(url);
    await getAllData();
  }

  @override
  void initState() {
    getAllData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: isLoading ?SafeArea(
        child: ListView.builder(
          padding: const EdgeInsets.all(15),
          itemCount: list.length,
          itemBuilder: (_, index){
            return Card(
              child: ListTile(
                title: Text(list[index]),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      onPressed: (){},
                      icon: const Icon(Icons.download),
                    ),
                    const SizedBox(width: 15,),
                    IconButton(
                      onPressed: ()async{
                        await delete(list[index]);
                      },
                      icon: const Icon(Icons.delete),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ):const Center(
        child: CircularProgressIndicator(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: ()async{
          String a = await uploadData();
          log(a);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

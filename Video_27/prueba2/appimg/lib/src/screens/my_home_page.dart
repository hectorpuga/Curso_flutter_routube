// ignore_for_file: avoid_print

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Hero")),
        body: Center(
            child:
                image == null ? const Text("no imagen") : Image.file(image!)),
        floatingActionButton: FloatingActionButton(
            child: const Icon(Icons.add),
            onPressed: () {
              _showOptions(context);
            }));
  }

  File? image;
  Future pickImage(ImageSource source) async {
    try {
      final image = await ImagePicker().pickImage(source: source);
      if (image == null) return;

      final imageTemporary = File(image.path);
      setState(() => this.image = imageTemporary);
      // ignore: nullable_type_in_catch_clause
    } on PlatformException catch (e) {
      print("error");
    }
  }

  void _showOptions(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) {
          return SimpleDialog(
            children: <Widget>[
              ListTile(
                  title: const Text("Camara"),
                  leading: const Icon(Icons.camera_alt),
                  onTap: () {
                    Navigator.pop(context);
                    pickImage(ImageSource.camera);
                  }),
              ListTile(
                  title: const Text("Galeria"),
                  leading: const Icon(Icons.image),
                  onTap: () {
                    Navigator.pop(context);
                    pickImage(ImageSource.gallery);
                  })
            ],
          );
        });
  }
}

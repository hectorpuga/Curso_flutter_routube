// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Hero")),
      body: ListView.builder(
        itemCount: 50,
        itemBuilder: (context, index) {
          final url = "https://picsum.photos/id/$index/410/300";

          return FadeInImage.assetNetwork(
              placeholder: "assets/spinner.gif",
              image: "https://picsum.photos/id/$index/410/200");
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Secondpage extends StatelessWidget {
  const Secondpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String url = ModalRoute.of(context)!.settings.arguments.toString();
    return Scaffold(
      appBar: AppBar(title: const Text("Hero")),
      body: Center(child: Hero(tag: url, child: Image.network(url))),
    );
  }
}

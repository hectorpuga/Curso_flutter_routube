import 'package:flutter/material.dart';

class Secondpage extends StatelessWidget {
  const Secondpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final name = ModalRoute.of(context)!.settings.arguments;
    return Scaffold(
        appBar: AppBar(title: const Text("Segunda pantalla")),
        body: Center(
          child: Text(name.toString()),
        ));
  }
}

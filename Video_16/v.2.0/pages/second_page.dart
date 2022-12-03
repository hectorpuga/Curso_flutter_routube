import 'package:flutter/material.dart';

class Secondpage extends StatelessWidget {
  const Secondpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SeconPageArguments de =
        ModalRoute.of(context)!.settings.arguments as SeconPageArguments;
    return Scaffold(
        appBar: AppBar(title: const Text("Segunda pantalla")),
        body: Center(
          child: Text(de.lastName.toString()),
        ));
  }
}

class SeconPageArguments {
  String? n;
  String? lastName;
  SeconPageArguments({this.n, this.lastName});
}

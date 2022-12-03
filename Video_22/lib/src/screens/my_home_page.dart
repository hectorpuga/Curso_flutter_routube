// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);
  final _scaffkey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffkey,
      appBar: AppBar(title: const Text("Mostrar un Snackbar")),
      body: Center(
        child: TextButton(
            onPressed: () {
              _showSnackBar(context);
            },
            child: const Text("Mostrar")),
      ),
    );
  }

  void _showSnackBar(BuildContext context) {
    SnackBar snackBar = SnackBar(
      content: const Text("Elemento eliminado"),
      action: SnackBarAction(
          label: "Cancelar",
          onPressed: () {
            print('Cancelado');
          }),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}

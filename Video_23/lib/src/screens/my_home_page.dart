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
              _showDialog(context);
            },
            child: const Text("Mostrar")),
      ),
    );
  }

  void _showDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
              title: const Text("Seleccione"),
              children: <Widget>[
                ListTile(
                  title: const Text("Eliminar"),
                  leading: const Icon(Icons.delete),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: const Text("actualizar"),
                  leading: const Icon(Icons.update),
                  onTap: () {},
                )
              ]);
        },
        barrierDismissible: false);
  }
}

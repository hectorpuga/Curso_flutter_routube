// ignore_for_file: unnecessary_this

import 'package:flutter/material.dart';
import 'package:proyecto/pages/second_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String? nameValue;
  String? lastnameValue;
  late final dynamic forKey;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Material App Bar'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Form(
            key: forKey,
            child: Column(
              children: <Widget>[
                TextFormField(
                    decoration: const InputDecoration(labelText: "Nombre"),
                    onSaved: (value) {
                      nameValue = value;
                    },
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "llene este campo";
                      }
                    }),
                TextFormField(
                  decoration: const InputDecoration(labelText: "Apellido"),
                  onSaved: (value) {
                    lastnameValue = value;
                  },
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "llene este campo";
                    }
                  },
                ),
                ElevatedButton(
                    onPressed: () {
                      _showSecondPage(context);
                    },
                    child: const Text("Mostrar segunda pantllas")),
              ],
            )),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    forKey = GlobalKey<FormState>();
  }

  @override
  void dispose() {
    super.dispose();
  }

  void _showSecondPage(BuildContext context) {
    if (forKey.currentState.validate()) {
      forKey.currentState.save();
      Navigator.of(context).pushNamed("/second",
          arguments: SeconPageArguments(
              n: this.nameValue, lastName: this.lastnameValue));
    }
    /*final route = MaterialPageRoute(builder: (BuildContext context) {
      return const Secondpage(
        name: 'Hector',
      );
    });*/
  }
}

import 'package:flutter/material.dart';
import 'package:proyecto/pages/second_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController? nameTextController;
  TextEditingController? lastNameTextController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Material App Bar'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            TextField(
              decoration: const InputDecoration(labelText: "Nombre"),
              controller: nameTextController,
            ),
            TextField(
                decoration: const InputDecoration(labelText: "Apellido"),
                controller: lastNameTextController),
            ElevatedButton(
                onPressed: () {
                  _showSecondPage(context);
                },
                child: const Text("Mostrar segunda pantllas")),
          ],
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    nameTextController = TextEditingController();
    lastNameTextController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    nameTextController!.dispose();
    lastNameTextController!.dispose();
  }

  void _showSecondPage(BuildContext context) {
    /*final route = MaterialPageRoute(builder: (BuildContext context) {
      return const Secondpage(
        name: 'Hector',
      );
    });*/
    Navigator.of(context).pushNamed("/second",
        arguments: SeconPageArguments(
            n: nameTextController!.text,
            lastName: lastNameTextController!.text));
  }
}

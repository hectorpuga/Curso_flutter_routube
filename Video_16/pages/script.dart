import 'package:flutter/material.dart';
import 'package:proyecto/pages/second_page.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Material App Bar'),
      ),
      body: Center(
          child: ElevatedButton(
              onPressed: () {
                _showSecondPage(context);
              },
              child: const Text("Mostrar segunda pantllas"))),
    );
  }

  void _showSecondPage(BuildContext context) {
    /*final route = MaterialPageRoute(builder: (BuildContext context) {
      return const Secondpage(
        name: 'Hector',
      );
    });*/
    Navigator.of(context).pushNamed("/second", arguments: "Hector");
  }
}

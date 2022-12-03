import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);
  final _scaffkey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffkey,
      drawer: _getDrawer(context),
      appBar: AppBar(title: const Text("Uso del Drawer")),
      body: const Center(
        child: Text("Hola"),
      ),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.menu),
          onPressed: () {
            _scaffkey.currentState!.openDrawer();
          }),
    );
  }
}

Widget _getDrawer(BuildContext context) {
  return Drawer(
      child: ListView(
    children: <Widget>[
      /* DrawerHeader(
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const <Widget>[
              FlutterLogo(
                size: 100,
              ),
              Text(
                "Uso de Draw",
                style: TextStyle(color: Colors.white),
              )
            ]),
        decoration: const BoxDecoration(color: Colors.orange),
      ),*/

      UserAccountsDrawerHeader(
        accountName: const Text("Hector"),
        accountEmail: const Text("puga.garcia.19096@itsmante.edu.mx"),
        currentAccountPicture: const FlutterLogo(
          size: 100,
        ),
        onDetailsPressed: () {},
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.deepOrange, Colors.black],
              end: Alignment.bottomRight),
        ),
      ),
      ListTile(
        title: const Text("Home"),
        leading: const Icon(Icons.home),
        onTap: () => showHome(context),
      ),
    ],
  ));
}

void showHome(BuildContext context) {
  Navigator.pop(context);
}

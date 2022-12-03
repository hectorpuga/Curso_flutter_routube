// ignore_for_file: dead_code

import 'package:flutter/material.dart';

import 'screens/home_page.dart';
import 'screens/login_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      initialRoute: '/',
      theme: ThemeData(
          brightness: Brightness.light,
          colorScheme: const ColorScheme.light(
              primary: Colors.cyan, secondary: Colors.cyan)),
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(builder: (BuildContext context) {
          switch (settings.name) {
            case '/':
              return LoginPage();

            case "/home":
              return HomePage();

            default:
              return LoginPage();
          }
        });
      },
    );
  }
}

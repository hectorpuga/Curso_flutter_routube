import 'package:flutter/material.dart';
import 'package:proyecto/pages/script.dart';
import 'package:proyecto/pages/second_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App', //home: MyHomePage()
      initialRoute: "/",
      routes: {
        "/": (BuildContext context) => const MyHomePage(),
        "/second": (BuildContext context) => const Secondpage(),
      },
    );
  }
}

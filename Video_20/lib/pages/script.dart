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
  TextEditingController? nameController;
  TextEditingController? lastController;

  FocusNode? nameFocus;
  FocusNode? lastnameFocus;
  FocusNode? telephonesFocus;
  FocusNode? emailFocus;
  FocusNode? ageFocus;
  FocusNode? webSiteFocus;

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
            child: ListView(
              children: <Widget>[
                TextFormField(
                  controller: nameController,
                  decoration: const InputDecoration(labelText: "Nombre"),
                  onSaved: (value) {
                    nameValue = value;
                  },
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "llene este campo";
                    }
                  },
                  focusNode: this.nameFocus,
                  onEditingComplete: () {
                    requesFocus(context, lastnameFocus!);
                  },
                  textInputAction: TextInputAction.next,
                ),
                TextFormField(
                  controller: lastController,
                  decoration: const InputDecoration(labelText: "Apellido"),
                  onSaved: (value) {
                    lastnameValue = value;
                  },
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "llene este campo";
                    }
                  },
                  focusNode: this.lastnameFocus,
                  onEditingComplete: () {
                    requesFocus(context, telephonesFocus!);
                  },
                  textInputAction: TextInputAction.next,
                ),
                TextFormField(
                  focusNode: this.telephonesFocus,
                  onEditingComplete: () {
                    requesFocus(context, emailFocus!);
                  },
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.phone,
                  decoration:
                      const InputDecoration(labelText: "Numero de telefono"),
                ),
                TextFormField(
                  focusNode: this.emailFocus,
                  onEditingComplete: () {
                    requesFocus(context, ageFocus!);
                  },
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.emailAddress,
                  decoration:
                      const InputDecoration(labelText: "Correo Electronico"),
                ),
                TextFormField(
                  focusNode: this.ageFocus,
                  onEditingComplete: () {
                    requesFocus(context, webSiteFocus!);
                  },
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(labelText: "Edad"),
                ),
                TextFormField(
                  focusNode: this.webSiteFocus,
                  keyboardType: TextInputType.url,
                  decoration: const InputDecoration(labelText: "Sitio web"),
                ),
                ElevatedButton(
                    onPressed: () {
                      _showSecondPage(context);
                    },
                    child: const Text("Mostrar segunda pantllas")),
                Container(
                  height: 1000,
                  width: 20,
                  color: Colors.black,
                )
              ],
            )),
      ),
    );
  }

  void requesFocus(BuildContext context, FocusNode focusNode) {
    FocusScope.of(context).requestFocus(focusNode);
  }

  @override
  void initState() {
    super.initState();
    forKey = GlobalKey<FormState>();
    nameController = TextEditingController();
    lastController = TextEditingController();
    nameFocus = FocusNode();
    lastnameFocus = FocusNode();
    telephonesFocus = FocusNode();
    emailFocus = FocusNode();
    ageFocus = FocusNode();
    webSiteFocus = FocusNode();
  }

  @override
  void dispose() {
    super.dispose();
    nameController!.dispose();
    lastController!.dispose();
    nameFocus!.dispose();
    lastnameFocus!.dispose();
    telephonesFocus!.dispose();
    emailFocus!.dispose();
    ageFocus!.dispose();
    webSiteFocus!.dispose();
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

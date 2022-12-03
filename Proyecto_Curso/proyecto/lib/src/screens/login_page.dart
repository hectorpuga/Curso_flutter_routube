import 'package:flutter/material.dart';

// ignore: must_be_immutable
class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  _Loginstate createState() => _Loginstate();
}

class _Loginstate extends State<LoginPage> {
  bool _Loa = false;

  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Form(
      key: _formkey,
      child: Stack(children: <Widget>[
        Container(
            padding: const EdgeInsets.symmetric(vertical: 60),
            width: double.infinity,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.cyan.shade300, Colors.cyan.shade800])),
            child: Image.asset(
              "assets/imagenes/cocinero.png",
              height: 200,
              color: Colors.white,
            )),
        Transform.translate(
          offset: const Offset(0, 50),
          child: Center(
            child: SingleChildScrollView(
              child: Card(
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  margin: const EdgeInsets.only(
                      left: 20, right: 20, top: 242, bottom: 20),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 35, vertical: 20),
                    child: Column(mainAxisSize: MainAxisSize.min, children: <
                        Widget>[
                      TextFormField(
                        decoration: const InputDecoration(labelText: "usuario"),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Este campo es obligatorio";
                          }
                        },
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                          labelText: "Contraseña",
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Este campo es obligatorio";
                          }
                        },
                        obscureText: true,
                      ),
                      const SizedBox(height: 40),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shadowColor: Theme.of(context).primaryColor),
                        onPressed: () {
                          _login(context);
                        },
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              const Text(
                                "Iniciar sesion",
                                style: TextStyle(color: Colors.white),
                              ),
                              if (_Loa)
                                Container(
                                    height: 20,
                                    width: 20,
                                    margin: const EdgeInsets.only(left: 20),
                                    child: const CircularProgressIndicator(
                                      valueColor: AlwaysStoppedAnimation<Color>(
                                          Colors.white),
                                    ))
                            ]),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          const Text("¿No estas registrado?"),
                          TextButton(
                              style: TextButton.styleFrom(
                                  shadowColor: Theme.of(context).primaryColor),
                              onPressed: () {},
                              child: const Text("Registrarse"))
                        ],
                      )
                    ]),
                  )),
            ),
          ),
        )
      ]),
    ));
  }

  void _login(BuildContext context) async {
    if (!_Loa) {
      setState(() {
        this._Loa = true;
      });
    }
  }
}

import 'package:flutter/material.dart';

import 'package:prueba_tecnica/presentacion/menuInicial.dart';
import 'package:prueba_tecnica/presentacion/recuperar.dart';

import 'package:prueba_tecnica/presentacion/registro.dart';
import 'package:prueba_tecnica/widgets/widget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  final TextEditingController usuario = TextEditingController();
  final TextEditingController clave = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Positioned.fill(
            child: Image.asset(
              "assets/fondo_login.png",
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.12,
            child: Logo(context),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.35,
            child: Container(
              width: MediaQuery.of(context).size.width * 0.9,
              height: MediaQuery.of(context).size.height * 0.35,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.10,
                    ),
                    width: MediaQuery.of(context).size.width * 0.80,
                    height: MediaQuery.of(context).size.height * 0.1,
                    child: CajaTextoIcono(
                      hintText: "Usuario",
                      controller: usuario,
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.80,
                    height: MediaQuery.of(context).size.height * 0.1,
                    child: CajaTextoOculto(
                      hintText: "Contraseña",
                      controller: clave,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.67,
            child: Container(
              width: MediaQuery.of(context).size.width * 0.75,
              height: MediaQuery.of(context).size.height * 0.055,
              child: Boton(
                  texto: "Ingresar",
                  size: 23,
                  onpressed: () {
                    /*   validarCampos(
                        usuario: usuario, clave: clave, context: context);*/

                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => menuInicial(),
                      ),
                    );
                  }),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.73,
            child: Container(
              width: MediaQuery.of(context).size.width * 0.8,
              height: MediaQuery.of(context).size.height * 0.3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: TextosAzul(texto: "Autenticación", size: 17),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Registro(),
                        ),
                      );
                    },
                    child: TextosAzul(texto: "¿No tienes cuenta?", size: 17),
                  ),
                  TextButton(
                    onPressed: () {
                  
                    },
                    child: TextosAzul(
                      texto: "¿Has olvidado tu contraseña?",
                      size: 17,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

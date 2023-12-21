// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:prueba_tecnica/widget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextEditingController usuario = TextEditingController();
    TextEditingController clave = TextEditingController();

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      home: Scaffold(
          resizeToAvoidBottomInset: false,
          body: Stack(alignment: Alignment.topCenter, children: [
            //Fondo de la app
            Positioned.fill(
                child: Image.asset(
              "assets/fondo_login.png",
              fit: BoxFit.cover,
            )),
            // logo de la app
            Positioned(
                top: MediaQuery.sizeOf(context).height * 0.12,
                child: Logo(context)),
            //cuerpo
            Positioned(
              top: MediaQuery.sizeOf(context).height * 0.35,
              child: Container(
                width: MediaQuery.sizeOf(context).width * 0.9,
                height: MediaQuery.sizeOf(context).height * 0.35,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: MediaQuery.sizeOf(context).width * 0.80,
                      height: MediaQuery.sizeOf(context).height * 0.1,
                      child: CajaTexto(
                          hintText: "Usuario",
                          controller: usuario,
                          context: context),
                    ),
                    Container(
                      width: MediaQuery.sizeOf(context).width * 0.80,
                      height: MediaQuery.sizeOf(context).height * 0.1,
                      child: CajaTexto_oculto(
                          hintText: "Contraseña",
                          controller: clave,
                          context: context),
                    ),
                  ],
                ),
              ),
            ),

            Positioned(
                top: MediaQuery.sizeOf(context).height * 0.67,
                child: Container(
                  width: MediaQuery.sizeOf(context).width * 0.75,
                  height: MediaQuery.sizeOf(context).height * 0.055,
                  child: Boton(texto: "Ingresar", size: 23, onpressed: () {}),
                )),

            Positioned(
              top: MediaQuery.sizeOf(context).height * 0.73,
              child: Container(
                width: MediaQuery.sizeOf(context).width * 0.8,
                height: MediaQuery.sizeOf(context).height * 0.3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TextButton(
                        onPressed: () {},
                        child: TextosAzul(texto: "Autenticacion", size: 17)),
                    TextButton(
                        onPressed: () {},
                        child:
                            TextosAzul(texto: "¿No tienes cuenta?", size: 17)),
                    TextButton(
                        onPressed: () {},
                        child: TextosAzul(
                            texto: "¿Has olvidado tu contraseña?", size: 17))
                  ],
                ),
              ),
            ),
          ])),
    );
  }
}

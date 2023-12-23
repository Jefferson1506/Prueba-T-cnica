// ignore_for_file: prefer_const_constructors,, use_key_in_widget_constructors
import 'package:flutter/material.dart';
import 'package:prueba_tecnica/widget.dart';

class Recuperacion extends StatelessWidget {
  // Declarar los controladores fuera del método build
  final TextEditingController claveNueva = TextEditingController();
  final TextEditingController claveVerificar = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          // Fondo de la app
          Positioned.fill(
            child: Image.asset(
              "assets/fondo_recuperacion.png",
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.80,
            left: MediaQuery.of(context).size.width * 0.68,
            width: MediaQuery.of(context).size.width * 0.30,
            height: MediaQuery.of(context).size.height * 0.15,
            child: Icono_decore(context, "assets/Icono_decore.png", 0.10, 0.5),
          ),

          Positioned(
            top: MediaQuery.of(context).size.height * 0.2,
            left: MediaQuery.of(context).size.width * 0.03,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                IconButton(
                  color: Colors.black,
                  iconSize: 40,
                  icon: Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                TextosAzul(texto: "Restablecimiento de contraseña", size: 28)
              ],
            ),
          ),
          // Cuerpo
          Positioned(
            top: MediaQuery.of(context).size.height * 0.30,
            child: Container(
              width: MediaQuery.of(context).size.width * 0.9,
              height: MediaQuery.of(context).size.height * 0.40,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.80,
                    height: MediaQuery.of(context).size.height * 0.1,
                    child: CajaTexto(
                      hintText: "Nueva Contraseña",
                      controller: claveNueva,
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.80,
                    height: MediaQuery.of(context).size.height * 0.1,
                    child: CajaTexto(
                      hintText: "Confirmación De Contraseña",
                      controller: claveVerificar,
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.75,
                    height: MediaQuery.of(context).size.height * 0.055,
                    child: Boton(texto: "Ingresar", size: 23, onpressed: () {}),
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

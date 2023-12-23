// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, dead_code

import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:prueba_tecnica/plantilla.dart';

Widget Logo(BuildContext context) {
  return Container(
    alignment: Alignment.topCenter,
    width: MediaQuery.sizeOf(context).width * 0.55,
    height: MediaQuery.sizeOf(context).height * 0.30,
    decoration: BoxDecoration(
        image: DecorationImage(
            filterQuality: FilterQuality.high,
            fit: BoxFit.cover,
            image: AssetImage("assets/Logo.png"))),
  );
}

Widget Icono_decore(
    BuildContext context, String logo, double alto, double ancho) {
  return Container(
    width: MediaQuery.sizeOf(context).width * ancho,
    height: MediaQuery.sizeOf(context).height * alto,
    decoration: BoxDecoration(
        image: DecorationImage(
            filterQuality: FilterQuality.high,
            fit: BoxFit.cover,
            image: AssetImage(logo))),
  );
}

Widget AnimacionCarga() {
  return Container(
    width: 100,
    height: 100,
    child: LoadingAnimationWidget.inkDrop(
      color: Colors.amber,
      size: 70,
    ),
  );
}

Widget CajaTexto({
  required String hintText,
  required TextEditingController controller,
}) {
  return TextField(
    autocorrect: false,
    cursorColor: Colors.black,
    autofocus: false,
    controller: controller,
    textAlignVertical: TextAlignVertical.center,
    textAlign: TextAlign.start,
    style: estiloTextoAzul(23),
    decoration: InputDecoration(
      contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      filled: true,
      fillColor: const Color.fromARGB(255, 158, 165, 216),
      hintText: hintText,
      hintStyle: estiloTextoAzul(23),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Color.fromARGB(255, 158, 165, 216)),
        borderRadius: BorderRadius.circular(22),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Color.fromARGB(255, 158, 165, 216)),
        borderRadius: BorderRadius.circular(22),
      ),
    ),
  );
}

Widget CajaTextoIcono({
  required String hintText,
  required TextEditingController controller,
}) {
  return TextField(
    autocorrect: false,
    cursorColor: Colors.black,
    autofocus: false,
    controller: controller,
    textAlignVertical: TextAlignVertical.center,
    textAlign: TextAlign.start,
    style: estiloTextoAzul(23),
    decoration: InputDecoration(
      contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      filled: true,
      fillColor: const Color.fromARGB(255, 158, 165, 216),
      hintText: hintText,
      hintStyle: estiloTextoAzul(23),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Color.fromARGB(255, 158, 165, 216)),
        borderRadius: BorderRadius.circular(22),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Color.fromARGB(255, 158, 165, 216)),
        borderRadius: BorderRadius.circular(22),
      ),
      suffixIcon: Icon(
        Icons.people,
        color: Colors.black,
        size: 20,
      ),
    ),
  );
}

Widget CajaTextoOculto({
  required String hintText,
  required TextEditingController controller,
}) {
  bool obscureText = true;

  return TextField(
    autocorrect: false,
    obscureText: obscureText,
    obscuringCharacter: "*",
    autofocus: false,
    cursorColor: Colors.black,
    controller: controller,
    textAlignVertical: TextAlignVertical.center,
    textAlign: TextAlign.start,
    style: TextStyle(fontSize: 23),
    decoration: InputDecoration(
      contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      filled: true,
      fillColor: const Color.fromARGB(255, 158, 165, 216),
      hintText: hintText,
      hintStyle: estiloTextoAzul(23),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Color.fromARGB(255, 158, 165, 216)),
        borderRadius: BorderRadius.circular(22),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Color.fromARGB(255, 158, 165, 216)),
        borderRadius: BorderRadius.circular(22),
      ),
      suffixIcon: IconButton(
        color: Colors.black,
        iconSize: 20,
        icon: Icon(obscureText ? Icons.visibility : Icons.visibility_off),
        onPressed: () {
          obscureText = !obscureText;
        },
      ),
    ),
  );
}

Widget Boton({
  required String texto,
  required double size,
  required VoidCallback onpressed,
}) {
  return ElevatedButton(
      style: estiloBotonAzul,
      onPressed: onpressed,
      child: TextosBlanco(texto: texto, size: size));
}

Widget TextosBlanco({required String texto, required double size}) {
  return Text(
    texto.toString(),
    textAlign: TextAlign.center,
    style: estiloTextoBlanco(size),
  );
}

Widget TextosAzul({required String texto, required double size}) {
  return Text(
    texto.toString(),
    textAlign: TextAlign.center,
    style: estiloTextoAzul(size),
  );
}

// ignore_for_file: prefer_const_constructors, non_constant_identifier_names

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

Widget CajaTexto(
    {required String hintText,
    required TextEditingController controller,
    required BuildContext context
    //required VoidCallback onPressed,
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
      helperText: hintText,
      helperStyle: estiloTextoAzul(23),
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

Widget CajaTexto_oculto(
    {required String hintText,
    required TextEditingController controller,
    required BuildContext context
    //required VoidCallback onPressed,
    }) {
  return TextField(
    autocorrect: false,
    obscureText: true,
    obscuringCharacter: "*",
    autofocus: false,
    cursorColor: Colors.black,
    controller: controller,
    textAlignVertical: TextAlignVertical.center,
    textAlign: TextAlign.start,
    style: estiloTextoAzul(23),
    decoration: InputDecoration(
      contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      filled: true,
      fillColor: const Color.fromARGB(255, 158, 165, 216),
      helperText: hintText,
      helperStyle: estiloTextoAzul(23),
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

Widget Boton({
  required String texto,
  required double size,
  required VoidCallback onpressed,
}) {
  return ElevatedButton(
    style: estiloBotonAzul,
      onPressed: onpressed, child: TextosBlanco(texto: texto, size: size));
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

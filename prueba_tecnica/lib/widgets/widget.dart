// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, dead_code

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:prueba_tecnica/widgets/getX.dart';
import 'package:prueba_tecnica/widgets/plantilla.dart';
import 'package:quickalert/quickalert.dart';

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
  final CajaTextoController obscureText = Get.put(CajaTextoController());
  return Obx(() => TextField(
        autocorrect: false,
        obscureText: obscureText.obscureText.value,
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
            icon: Icon(obscureText.obscureText.value
                ? Icons.visibility
                : Icons.visibility_off),
            onPressed: () {
              obscureText.toggleObscureText();
            },
          ),
        ),
      ));
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

Widget BotonEsp(
    {required double size,
    required Icon icon,
    required VoidCallback onpressed,
    required bool opcion}) {
  return ElevatedButton(
    style: opcion ? estiloBotonRojo : estiloBotonAzul,
    onPressed: onpressed,
    child: Icon(
      icon.icon,
      size: size,
      color: Colors.white,
    ),
  );
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

Future errorMensaje(BuildContext context, String mensaje) {
  return QuickAlert.show(
    confirmBtnText: "Entendido",
    context: context,
    barrierColor: Color.fromARGB(160, 158, 165, 216),
    confirmBtnColor: const Color.fromARGB(255, 18, 34, 157),
    type: QuickAlertType.error,
    title: 'Oops...',
    text: mensaje,
  );
}

Future correctoMensaje(BuildContext context, String mensaje) {
  return QuickAlert.show(
      context: context,
      title: mensaje,
      text: "",
      type: QuickAlertType.success,
      barrierColor: Color.fromARGB(160, 158, 165, 216),
      confirmBtnColor: const Color.fromARGB(255, 18, 34, 157),
      confirmBtnText: "Confirmar",
      onConfirmBtnTap: () {
        Navigator.of(context).pop();
      });
}

mostrarAlert(BuildContext context2) {
  TextEditingController inputController = TextEditingController();

  showDialog(
    context: context2,
    builder: (BuildContext context) {
      return AlertDialog(
        actionsAlignment: MainAxisAlignment.center,
        scrollable: true,
        title: Center(
            child: Text(
          'Digite nuevo saldo',
          style: estiloTextoAzul(25),
        )),
        content: Column(
          children: [
            TextField(
              textAlign: TextAlign.center,
              controller: inputController,
              decoration: InputDecoration(
                hintText: '1234',
              ),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () {
              // Acción al hacer clic en el botón Cancelar
              Navigator.of(context).pop();
            },
            child: Text(
              'Cancelar',
              style: TextStyle(color: Colors.red,fontSize: 20),
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
              correctoMensaje(context2, "Saldo actualizado con exito");
            },
            child: Text(
              'Guardar',
              style: TextStyle(color: Colors.blue,fontSize: 20),
            ),
          ),
        ],
      );
    },
  );
}

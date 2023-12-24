import 'package:flutter/material.dart';
import 'package:prueba_tecnica/widgets/widget.dart';

bool validarCampos(
    {required usuario, required clave, required BuildContext context}) {
  bool camposOk = true;

  if (usuario.text.isEmpty && clave.text.isEmpty) {
    camposOk = false;
    errorMensaje(
        context, "Lo sentimos.. No ha registrado los campos necesarios");
  } else {
    if (usuario.text.isEmpty) {
      camposOk = false;
      errorMensaje(
        context, "Lo sentimos.. Falta registrar su usuario");
    } else {
      if (clave.text.isEmpty) {
        camposOk = false;errorMensaje(
        context, "Lo sentimos.. Falta registrar su contraseña");
      }
    }
  }

  return camposOk;
}

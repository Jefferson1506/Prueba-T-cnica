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
      errorMensaje(context, "Lo sentimos.. Falta registrar su usuario");
    } else {
      if (clave.text.isEmpty) {
        camposOk = false;
        errorMensaje(context, "Lo sentimos.. Falta registrar su contraseña");
      }
    }
  }

  return camposOk;
}

bool validarCamposRegistro(
    {required String nuevoDocumento,
    required String id,
    required String nombre,
    required String correo,
    required String clave,
    required BuildContext context}) {
  bool camposOk = true;

  if (nombre.isEmpty && clave.isEmpty && correo.isEmpty && id.isEmpty && (nuevoDocumento.isEmpty || nuevoDocumento == "Tipo De Documento")) {
    camposOk = false;
    errorMensaje(
        context, "Lo sentimos.. No se ha registrado los campos necesarios");
  } else {
    if (nuevoDocumento.isEmpty || nuevoDocumento == "Tipo De Documento") {
      camposOk = false;
      errorMensaje(context, "Por favor, Seleccione el tipo De Documento");
    } else if (id.isEmpty) {
      camposOk = false;
      errorMensaje(context, "Por favor, ingresa su identificacion");
    } else if (nombre.isEmpty) {
      camposOk = false;
      errorMensaje(context, "Por favor, ingresa el nombre");
    } else if (correo.isEmpty) {
      camposOk = false;
      errorMensaje(context, "Por favor, ingresa el correo");
    } else if (clave.isEmpty) {
      camposOk = false;
      errorMensaje(context, "Por favor, ingresa la contraseña");
    } else {
      camposOk = true;
    }
  }

  return camposOk;
}

// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle estiloTextoAzul(double size) {
  return GoogleFonts.grenze(
      color: Color.fromARGB(255, 5, 10, 48),
      fontWeight: FontWeight.w400,
      fontSize: size);
}

TextStyle estiloTextoBlanco(double size) {
  return GoogleFonts.grenze(
      color: Color.fromARGB(255, 255, 255, 255),
      fontWeight: FontWeight.w400,
      fontSize: size);
}

TextStyle estiloTextoNegro(double size) {
  return GoogleFonts.grenze(
      color: Color.fromARGB(255, 0, 0, 0),
      fontWeight: FontWeight.w400,
      fontSize: size);
}



ButtonStyle estiloBotonAzul = ElevatedButton.styleFrom(
    backgroundColor: Color.fromARGB(255, 18, 34, 157),
    side: BorderSide(
      color: Color.fromARGB(255, 18, 34, 157),
    ),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ));


    ButtonStyle estiloBotonRojo = ElevatedButton.styleFrom(
    backgroundColor: Color.fromARGB(255, 157, 34, 18),
    side: BorderSide(
      color: Color.fromARGB(255,  157, 34, 18),
    ),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ));

ButtonStyle btColor1 = ElevatedButton.styleFrom(
    minimumSize: Size(100, 60),
    textStyle: TextStyle(color: Colors.black),
    backgroundColor: Color.fromARGB(255, 61, 121, 48),
    side: BorderSide(
      width: 1.0,
      color: Color.fromARGB(255, 0, 0, 0),
    ),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(50)),
    ));

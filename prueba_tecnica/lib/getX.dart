import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CajaTextoController extends GetxController {
  TextEditingController controller = TextEditingController();
  RxBool obscureText = true.obs;

  void toggleObscureText() {
    obscureText.toggle();
  }
}

class DocumentoController extends GetxController {
  var documento = ''.obs;
}
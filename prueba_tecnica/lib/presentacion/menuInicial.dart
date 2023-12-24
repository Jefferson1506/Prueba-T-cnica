// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, non_constant_identifier_names

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:prueba_tecnica/widgets/widget.dart';

class menuInicial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        floatingActionButton: SpeedDial(
          icon: Icons.settings,
          activeIcon: Icons.remove,
          backgroundColor: const Color.fromARGB(255, 255, 255, 255),
          foregroundColor: const Color.fromARGB(255, 5, 10, 48),
          overlayColor: Color.fromARGB(255, 195, 190, 190),
          elevation: 8.0,
          curve: Curves.easeInOut,
          children: [
            SpeedDialChild(
              child: Icon(Icons.fact_check),
              backgroundColor: Colors.orange,
              label: 'Historial',
              onTap: () => print('Presionaste la opción 1'),
            ),
            SpeedDialChild(
              child: Icon(Icons.close_fullscreen_outlined),
              backgroundColor: Colors.red,
              label: 'Salir',
              onTap: () => Navigator.pop(context),
            ),
          ],
        ),
        body: Stack(alignment: Alignment.topCenter, children: [
          // Fondo de la app
          Positioned.fill(
              child: Image.asset(
            "assets/Fondo_menu.png",
            fit: BoxFit.cover,
            filterQuality: FilterQuality.high,
          )),

          Positioned(
              top: MediaQuery.sizeOf(context).height * 0.15,
              left: MediaQuery.sizeOf(context).width * 0.13,
              child: Container(
                  child: TextosAzul(
                      texto: "¡Bienvenido a tu tarjeta virtual!", size: 20))),

          Positioned(
              top: MediaQuery.sizeOf(context).height * 0.05,
              left: MediaQuery.sizeOf(context).width * 0.07,
              width: MediaQuery.of(context).size.width * 0.15,
              height: MediaQuery.of(context).size.height * 0.07,
              child: CircleAvatar(
                backgroundColor: Colors.white,
                child: Icono_decore(
                    context, "assets/perfil_decore.png", 0.10, 0.20),
              )),
          Positioned(
              top: MediaQuery.sizeOf(context).height * 0.25,
              child: Tarjeta(context)),

          Positioned(
            top: MediaQuery.sizeOf(context).height * 0.70,
            child: Container(
              height: MediaQuery.sizeOf(context).height * 0.07,
              width: MediaQuery.sizeOf(context).width * 0.30,
              child: BotonEsp(
                size: 30.0,
                icon: Icon(Icons.border_color),
                onpressed: () {
                 mostrarAlert(context);
                },
                opcion: true,
              ),
            ),
          )
        ]));
  }
}

Widget Tarjeta(BuildContext context) {
  return Card(
    elevation: 10,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15.0),
    ),
    child: Container(
      width: MediaQuery.sizeOf(context).width * 0.9,
      height: MediaQuery.sizeOf(context).height * 0.3,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 5, 1, 88),
            Color.fromARGB(255, 10, 43, 190),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextosBlanco(texto: 'Nombre del Titular', size: 20),
          SizedBox(height: 10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextosBlanco(
                  texto: '**** **** **** ${generarNumeroAleatorio_4()}',
                  size: 20),
              Row(
                children: [
                  Icon(Icons.attach_money,
                      color: const Color.fromARGB(255, 255, 255, 255)),
                  SizedBox(width: 8.0),
                  TextosBlanco(texto: "100000", size: 20)
                ],
              )
            ],
          ),
          Icono_decore(context, "assets/chip_decore.png", 0.10, 0.15),
          SizedBox(height: 10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextosBlanco(texto: '  Fecha de Expiración', size: 20),
              TextosBlanco(
                  texto:
                      '${generarNumeroAleatorio_2()}/${generarNumeroAleatorio_2_2()}',
                  size: 20),
            ],
          ),
        ],
      ),
    ),
  );
}

int generarNumeroAleatorio_4() {
  Random random = Random();
  return random.nextInt(9000) + 1000;
}

int generarNumeroAleatorio_2() {
  Random random = Random(11);
  return random.nextInt(11) + 1;
}

int generarNumeroAleatorio_2_2() {
  Random random = Random();
  return random.nextInt(90) + 10;
}

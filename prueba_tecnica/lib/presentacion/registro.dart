// ignore_for_file: prefer_const_constructors,, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:prueba_tecnica/getX.dart';
import 'package:prueba_tecnica/widget.dart';

class Registro extends StatelessWidget {
  final TextEditingController correo = TextEditingController();
  final TextEditingController nombre = TextEditingController();
   final TextEditingController clave = TextEditingController();
  final DocumentoController documentoController =
      Get.put(DocumentoController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          // Fondo de la app
          Positioned.fill(
              child: ColoredBox(color: const Color.fromARGB(255, 5, 10, 48))),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.05,
            right: MediaQuery.of(context).size.width * 0.50,
            width: MediaQuery.of(context).size.width * 0.50,
            height: MediaQuery.of(context).size.height * 0.20,
            child:
                Icono_decore(context, "assets/dinero_decore.png", 0.10, 0.10),
          ),
          //cuerpo
          Positioned(
              top: MediaQuery.of(context).size.height * 0.35,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(100),
                  ),
                ),
                width: MediaQuery.of(context).size.width * 1,
                height: MediaQuery.of(context).size.height * 0.65,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 15),
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
                          TextosAzul(
                              texto: "Registro De Nuevo Usuario ", size: 28)
                        ],
                      ),
                    ),
                    Container(
                        width: MediaQuery.of(context).size.width * 0.60,
                        height: MediaQuery.of(context).size.height * 0.08,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 18, 34, 157),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Obx(() {
                          return ListTile(
                            title: TextosBlanco(
                                texto: documentoController
                                        .documento.value.isNotEmpty
                                    ? documentoController.documento.value
                                    : "Tipo De Documento",
                                size: 20),
                            trailing: Icon(
                              Icons.arrow_drop_down,
                              color: Colors.white,
                            ),
                            onTap: () async {
                              var nuevoDocumento =
                                  await selectorDocumento(context);

                              try {
                                documentoController.documento.value =
                                    nuevoDocumento;
                              } catch (e) {}
                            },
                          );
                        })),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        // Día
                        Container(
                          width: 100,
                          child: Column(
                            children: [
                              Text('Día', style: TextStyle(fontSize: 12)),
                              CupertinoPicker(
                                itemExtent: 40.0,
                                onSelectedItemChanged: (index) {},
                                children: List.generate(
                                    31, (index) => Text('${index + 1}')),
                              ),
                            ],
                          ),
                        ),

                        // Mes
                        Container(
                          width: 100, // ajusta según sea necesario
                          child: Column(
                            children: [
                              Text('Mes', style: TextStyle(fontSize: 12)),
                              CupertinoPicker(
                                itemExtent: 40.0,
                                onSelectedItemChanged: (index) {},
                                children: List.generate(
                                    12, (index) => Text('${index + 1}')),
                              ),
                            ],
                          ),
                        ),

                        // Año
                        Container(
                          width: 100, // ajusta según sea necesario
                          child: Column(
                            children: [
                              Text('Año', style: TextStyle(fontSize: 12)),
                              CupertinoPicker(
                                itemExtent: 40.0,
                                onSelectedItemChanged: (index) {},
                                children: List.generate(
                                    100, (index) => Text('${index + 1980}')),
                              ),
                            ],
                          ),
                        ),
                      
                      ],
                      
                    ),
                      Container(
                          width: MediaQuery.of(context).size.width * 0.80,
                          height: MediaQuery.of(context).size.height * 0.1,
                          child: CajaTexto(
                            hintText: "Nombre :",
                            controller: nombre,
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.80,
                          height: MediaQuery.of(context).size.height * 0.1,
                          child: CajaTexto(
                            hintText: "Contraseña",
                            controller: clave,
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.80,
                          height: MediaQuery.of(context).size.height * 0.1,
                          child: CajaTexto(
                            hintText: "Correo Electronico",
                            controller: correo,
                          ),
                        ),

                        Container(
                          width: MediaQuery.of(context).size.width * 0.75,
                          height: MediaQuery.of(context).size.height * 0.055,
                          child: Boton(
                              texto: "Registrarse", size: 23, onpressed: () {}),
                        ),
                  ],
                ),
              )),

          Positioned(
            top: MediaQuery.of(context).size.height * 0.20,
            left: MediaQuery.of(context).size.width * 0.65,
            width: MediaQuery.of(context).size.width * 0.30,
            height: MediaQuery.of(context).size.height * 0.20,
            child:
                Icono_decore(context, "assets/cerdo_decorate.png", 0.10, 0.10),
          ),
        ],
      ),
    );
  }
}

Future selectorDocumento(BuildContext context) {
  List<String> tiposDocumentos = [
    'Cédula de Identidad',
    'Pasaporte',
    'Licencia de Conducir',
    'Tarjeta de Residencia',
    'Otro'
  ];
  return showDialog(
    barrierColor: Colors.grey,
    context: context,
    builder: (BuildContext context) {
      return SimpleDialog(
          title: Text('Selecciona una opción'),
          children: tiposDocumentos.map((option) {
            return SimpleDialogOption(
              onPressed: () {
                Navigator.pop(context, option);
              },
              child: Text(option),
            );
          }).toList());
    },
  );
}

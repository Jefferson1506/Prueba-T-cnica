// ignore_for_file: prefer_const_constructors,, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, must_be_immutable
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prueba_tecnica/logica/validacion.dart';
import 'package:prueba_tecnica/widgets/getX.dart';
import 'package:prueba_tecnica/widgets/widget.dart';

class Registro extends StatelessWidget {
  final TextEditingController correo = TextEditingController();
  final TextEditingController nombre = TextEditingController();
  final TextEditingController clave = TextEditingController();
  final TextEditingController id = TextEditingController();
  var nuevoDocumento = "";
  final DocumentoController documentoController =
      Get.put(DocumentoController());

  void limpiador() {
    correo.clear();
    nombre.clear();
    clave.clear();
    id.clear();
    nuevoDocumento = "";
    documentoController.documento = "".obs;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              top: MediaQuery.of(context).size.height * 0.30,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(100),
                  ),
                ),
                width: MediaQuery.of(context).size.width * 1,
                height: MediaQuery.of(context).size.height * 0.7,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
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
                              limpiador();
                            },
                          ),
                          TextosAzul(
                              texto: "Registro De Nuevo Usuario ", size: 28)
                        ],
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.symmetric(vertical: 25),
                        width: MediaQuery.of(context).size.width * 0.80,
                        height: MediaQuery.of(context).size.height * 0.07,
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
                                size: 19),
                            trailing: Icon(
                              Icons.arrow_drop_down,
                              color: Colors.white,
                            ),
                            onTap: () async {
                              try {
                                nuevoDocumento =
                                    await selectorDocumento(context);
                                documentoController.documento.value =
                                    nuevoDocumento;
                              } catch (e) {}
                            },
                          );
                        })),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.80,
                      height: MediaQuery.of(context).size.height * 0.08,
                      child: CajaTexto(
                        hintText: "Identificación",
                        controller: id,
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.80,
                      height: MediaQuery.of(context).size.height * 0.08,
                      child: CajaTexto(
                        hintText: "Nombre",
                        controller: nombre,
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.80,
                      height: MediaQuery.of(context).size.height * 0.08,
                      child: CajaTexto(
                        hintText: "Correo Electronico",
                        controller: correo,
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.80,
                      height: MediaQuery.of(context).size.height * 0.08,
                      child: CajaTexto(
                        hintText: "Contraseña",
                        controller: clave,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 22),
                      width: MediaQuery.of(context).size.width * 0.50,
                      height: MediaQuery.of(context).size.height * 0.07,
                      child: Boton(
                          texto: "Registrarse",
                          size: 20,
                          onpressed: () {
                            validarCamposRegistro(
                                nombre: nombre.text.toString(),
                                clave: clave.text.toString(),
                                nuevoDocumento: nuevoDocumento.toString(),
                                correo: correo.text.toString(),
                                id: id.text.toString(),
                                context: context);
                          }),
                    ),
                  ],
                ),
              )),

          /*     Positioned(
            top: MediaQuery.of(context).size.height * 0.20,
            left: MediaQuery.of(context).size.width * 0.65,
            width: MediaQuery.of(context).size.width * 0.30,
            height: MediaQuery.of(context).size.height * 0.20,
            child: Icono_decore(context, "assets/cerdo_decore.png", 0.10, 0.10),
          ),*/
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
    barrierColor: Color.fromARGB(160, 158, 165, 216),
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

//combos para la edad
/*
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

*/
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:prueba/screens/splashScreen/animationScreen.dart';

class RegisterScreen extends StatefulWidget {
  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  XFile? _image;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_rounded,
              color: Colors.orange,
            ),
            onPressed: () {},
          )),
      body: Column(
        children: [
          const Text(
            'Crear Cuenta',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 55,
          ),
          Center(
            child: SizedBox(
              width: 150,
              height: 150,
              child: ElevatedButton(
                onPressed: () async {
                  XFile? image = await ImagePicker()
                      .pickImage(source: ImageSource.gallery);
                  setState(() {
                    _image = image;
                  });
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      side: const BorderSide(
                          width: 2, color: Color.fromRGBO(104, 80, 56, 1)),
                      borderRadius: BorderRadius.circular(16)),
                  primary: Colors.transparent,
                ),
                child: const Text('Selecciona la imagen'),
              ),
            ),
          ),
          if (_image != null)
            Image.file(
              File(_image!.path),
              width: 100,
              height: 100,
              fit: BoxFit.cover,
            ),

          const SizedBox(
              height: 20), // Espacio entre la imagen y los campos de texto
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Nombre',
              ),
            ),
          ), // Mostrar la imagen seleccionada
          const SizedBox(
              height: 20), // Espacio entre la imagen y los campos de texto
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Correo Electronico',
              ),
            ),
          ),
          const SizedBox(
              height: 20), // Espacio entre la imagen y los campos de texto
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Contraseña',
              ),
            ),
          ),
          const SizedBox(
              height: 20), // Espacio entre la imagen y los campos de texto
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'repetir contraseña',
              ),
            ),
          ),
          SizedBox(
            height: 35,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => AnimationScreen()),
                );
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  side: const BorderSide(width: 8, color: Colors.transparent),
                  borderRadius: BorderRadius.circular(16),
                ),
                padding: EdgeInsets
                    .zero, // Eliminar el relleno predeterminado del botón
                elevation: 0, // Eliminar la sombra del botón
                primary: Colors
                    .transparent, // Establecer el color del botón como transparente
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  gradient: const LinearGradient(
                    colors: [
                      Color.fromRGBO(
                          247, 153, 53, 1), // Color inicial del degradado
                      Color.fromRGBO(
                          236, 99, 31, 1), // Color final del degradado
                    ],
                    begin: Alignment.topCenter, // Punto de inicio del degradado
                    end: Alignment
                        .bottomCenter, // Punto de finalización del degradado
                  ),
                ),
                padding:
                    const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
                alignment: Alignment.center,
                child: const Text('Crear'),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}

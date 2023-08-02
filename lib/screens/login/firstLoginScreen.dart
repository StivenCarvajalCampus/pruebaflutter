import 'package:flutter/material.dart';
import 'package:prueba/screens/login/registerScreen.dart';

class FirstLoginScreen extends StatelessWidget {
  const FirstLoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/fondo.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Form(
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    margin: EdgeInsets.all(60),
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(202, 162, 123, 1),
                      shape: BoxShape.circle,
                    ),
                    width: 100,
                    height: 150,
                  ),
                ),
                const Spacer(),
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey.withAlpha(150),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: const TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        labelText: 'Correo electronico',
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey.withAlpha(150),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: const TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        labelText: 'Contraseña',
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                            width: 8, color: Colors.transparent),
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
                          begin: Alignment
                              .topCenter, // Punto de inicio del degradado
                          end: Alignment
                              .bottomCenter, // Punto de finalización del degradado
                        ),
                      ),
                      padding: const EdgeInsets.symmetric(
                          vertical: 16, horizontal: 24),
                      alignment: Alignment.center,
                      child: const Text('Iniciar sesion'),
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                SizedBox(
                  width: 350,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RegisterScreen()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          side: const BorderSide(
                              width: 2, color: Color.fromRGBO(104, 80, 56, 1)),
                          borderRadius: BorderRadius.circular(16)),
                      primary: Colors.transparent,
                    ),
                    child: Text('Crear Cuenta'),
                  ),
                ),
                SizedBox(
                  height: 25,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

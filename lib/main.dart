import 'package:flutter/material.dart';
import 'package:prueba/screens/login/firstLoginScreen.dart';
import 'package:prueba/screens/login/registerScreen.dart';
import 'screens/splashScreen/splashScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Prueba',
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

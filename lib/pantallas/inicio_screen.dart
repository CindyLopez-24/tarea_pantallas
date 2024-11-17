import 'package:flutter/material.dart';
class WelcomeScreen extends StatelessWidget {
  final String correo;
  const WelcomeScreen({super.key, required this.correo});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inicio'),
      ),
      body: Center(
        child: Text('Bienvenido, $correo!'),
      ),
    );
    
  }
}
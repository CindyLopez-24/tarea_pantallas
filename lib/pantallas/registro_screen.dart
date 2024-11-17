import 'package:flutter/material.dart';
import 'package:pantallas/pantallas/inicio_screen.dart';

class RegisterScreen extends StatelessWidget {
  
 final String correo; 
 final String contrasena; 
 
 const RegisterScreen({super.key, required this.correo, required this.contrasena}); 

 @override 
 Widget build(BuildContext context) { 
  return Scaffold( 
    appBar: AppBar( 
      title: const Text('Registro Completo'),
       ), body: Padding(
         padding: const EdgeInsets.all(16.0),
         child: Column( 
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[ Text('Correo Electrónico: $correo'), 
          const SizedBox(height: 16.0), 
          Text('Contraseña: $contrasena'), 
       const SizedBox(height: 32.0), 
          ElevatedButton( onPressed: () {
             Navigator.push( context, MaterialPageRoute(
               builder: (context) => WelcomeScreen(correo: correo),
                ), 
              ); 
                }, child: const Text('Ir a la pantalla de bienvenida'),
             ), ElevatedButton( 
              onPressed: () { 
                Navigator.pop(context); },
                 child: const Text('Volver'),
                  ), 
                  ], 
                  ),
                 ), 
                 ); 
            }

      
    
}
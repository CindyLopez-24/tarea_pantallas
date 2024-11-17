import 'package:flutter/material.dart';
import 'package:pantallas/pantallas/inicio_screen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  RegisterScreenState createState() => RegisterScreenState();
}

 class RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController _nombreController = TextEditingController();
  final TextEditingController _correoController = TextEditingController(); 
  final TextEditingController _telefonoController = TextEditingController(); 
  final TextEditingController _contrasenaController = TextEditingController(); 
  final TextEditingController _confirmarController = TextEditingController(); 
  bool _contrasenaVisible = false; 
  bool _confirmarVisible = false; 

  @override 
  void initState() {
     super.initState(); 
     _contrasenaVisible = false; 
     _confirmarVisible = false; 
     }
 
 
 @override 
 Widget build(BuildContext context) { 
  return Scaffold( 
    appBar: AppBar( 
      title: const Text('Registrarse'),
       ),
        body: Padding(
         padding: const EdgeInsets.all(16.0),
         child: Column( 
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[ 
            TextField(
              controller: _nombreController,
              decoration: const InputDecoration(
                labelText: 'Nombre',
                border: OutlineInputBorder(),
              )
            ), 
            
            const SizedBox(height: 16.0), 
            TextField( 
              controller: _correoController, 
              decoration: const InputDecoration( 
                labelText: 'Correo Electronico', 
                border: OutlineInputBorder(), 
                ), 
                keyboardType: TextInputType.emailAddress,
                 ), 
                 const SizedBox(height: 16.0), 
                 TextField( 
                  controller: _telefonoController, 
                  decoration: const InputDecoration( 
                    labelText: 'Telefono', 
                    border: OutlineInputBorder(), 
                    ), 
                    keyboardType: TextInputType.phone, 
                    ),
             const SizedBox(height: 16.0), 
             TextField( 
              controller: _contrasenaController, 
              obscureText: !_contrasenaVisible, 
              decoration: InputDecoration( 
                labelText: 'Contraseña', 
                border: const OutlineInputBorder(), 
                suffixIcon: IconButton( 
                  icon: Icon( _contrasenaVisible ? Icons.visibility : Icons.visibility_off,
                   ), 
                   onPressed: () { 
                    setState(() { _contrasenaVisible = !_contrasenaVisible;
                     });
                     },
                      ), 
                    ), 
                  ),
             const SizedBox(height: 16.0), 
              TextField( controller: _confirmarController, 
              obscureText: !_confirmarVisible, 
              decoration: InputDecoration( 
                labelText: 'Confirmar Contraseña', 
                border: const OutlineInputBorder(), 
                suffixIcon: IconButton(
                   icon: Icon( _confirmarVisible ? Icons.visibility : Icons.visibility_off,
                    ), 
                    onPressed: () { setState(() { 
                      _confirmarVisible = !_confirmarVisible;
                       }); 
                       }, 
                      ), 
                    ), 
                  ),
            const SizedBox(height: 32.0),
             ElevatedButton( 
              onPressed: _register, 
                 child: const Text('Registrarse'),
                  ), 
                  ], 
                  ),
                 ), 
                 ); 
            }
             void _register() {
              String nombre = _nombreController.text; 
              String correo = _correoController.text; 
              String telefono = _telefonoController.text; 
              String contrasena = _contrasenaController.text; 
              String confirmar = _confirmarController.text;

               // lógica de validación y registro 
               if (nombre.isNotEmpty && correo.isNotEmpty 
               && telefono.isNotEmpty && contrasena.isNotEmpty 
               && confirmar == contrasena) 
               { Navigator.push( 
                context, MaterialPageRoute( 
                  builder: (context) => WelcomeScreen(correo: correo),
                   ),
                    ); 
                    } else {
                       print('Por favor, completa todos los campos correctamente');
             }
           }
         }
    
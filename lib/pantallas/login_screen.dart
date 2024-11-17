import 'package:flutter/material.dart';
import 'package:pantallas/pantallas/registro_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  LoginScreenState createState() => LoginScreenState();
}

class LoginScreenState extends State<LoginScreen> {
  final TextEditingController _correoController = TextEditingController();
  final TextEditingController _contrasenaController = TextEditingController();

  bool _contrasenaVisible = false;

  @override
    void initState() {
      super.initState();
      _contrasenaVisible = false;
    }
    
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Inicio de Sesion'),
        ),

            body: Padding( 
              padding: const EdgeInsets.all(16.0), 
              child: Column( mainAxisAlignment: MainAxisAlignment.center,
               children: <Widget>[ TextField( controller: _correoController, 
               decoration: const InputDecoration( labelText: 'Correo Electronico', 
               border: OutlineInputBorder(), 
               ), 
               keyboardType: TextInputType.emailAddress,    
               ),
              const SizedBox( height: 16.0),
               TextField( controller: _contrasenaController,
               obscureText: !_contrasenaVisible,
               decoration: InputDecoration( 
                labelText: 'Contraseña', 
                border: const OutlineInputBorder(), 
                suffixIcon: IconButton(
                   icon: Icon(
                     _contrasenaVisible ? Icons.visibility : Icons.visibility_off, 
                     ), onPressed: () { setState(() {
                       _contrasenaVisible = !_contrasenaVisible;
                     }); 
                    }, 
                  ), 
                ),
               ),

              const SizedBox(height:32.0),
               ElevatedButton(
                onPressed: _login, 
                child:  const Text('Ingresar'),
                ),
                TextButton(
                  onPressed: _register,
                  child: const Text('Registrarse'),
                  ),
          ],
         ),
        ),
      );        
    }

    void _login() {
      String correo = _correoController.text;
      String contrasena = _contrasenaController.text;

      if (correo.isNotEmpty && contrasena.isNotEmpty) {
        print('Correo: $correo');
        print('Contraseña: $contrasena');
      } 
       else {
        print('Por favor, ingrese todos los datos solicitados');
       }
    } 

    void _register(){
        String correo = _correoController.text;
        String contrasena = _contrasenaController.text;

        if (correo.isNotEmpty && contrasena.isNotEmpty) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => 
              RegisterScreen(
                correo: correo,
                contrasena: contrasena),
              ),
          );
        }
         else {
          print('Complete todos los campos');
         }
    }

   
  }


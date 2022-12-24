//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:loginui/components/my_button.dart';
import 'package:loginui/components/square_tile.dart';
import 'package:loginui/my_textfield.dart';

class LoginPage extends StatelessWidget {
LoginPage({super.key});

//text editing controllers
final usernameController = TextEditingController();
final passwordController = TextEditingController();

//Creando metodo para mandar a la pantalla principal
void signUserIn(){}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
          children: [
          //Separador entre cabecera y logo
          const SizedBox(height: 35),
            //Logo
            //Reemplazando Icono por logo
            /*
              Icon(Icons.lock,
              size: 100,
              ),
              */
              Image.asset('lib/images/rayitosfondo.png',
              height: 145),
              const SizedBox(height: 16),
              //welcome back 
              Text('Bienvenido a Rayitos' , 
              style: TextStyle
              (
                color: Colors.grey[700],
                fontSize: 20,
                fontWeight: FontWeight.bold,
                ),
              ) ,   
              const SizedBox(height: 25),
              //username textfield
              MyTextField(
                controller: usernameController,
                hintText: 'Username',
                obscureText: false,
              ),
              const SizedBox(height: 10),
              //password textfield
              MyTextField( 
                controller: passwordController,
                hintText: 'Password',
                obscureText: true,),
                //Olvidaste la contraseña?
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        '¿Olvistaste tu contraseña?' , 
                        style: TextStyle(color: Colors.grey[600]),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 25),
              //Botton de iniciar sesion
              MyButton(
                onTap: signUserIn,
              ),
              const SizedBox(height: 25),
              //o continuar con 
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    //Linea izquierda
                    Expanded(
                    child: Divider(thickness: 0.5,
                    color: Colors.grey[400],)
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Continuar con' , 
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                      thickness: 0.5,
                      color: Colors.grey[400],
                    ),
                    ),
                  ],
                ),
              ),
              //Espacio entre la etiqueta y los botones
              const SizedBox(height: 35),
              //google + apple sign in icons buttons
              Row(
                //Alineamos las imagenes en el centro
              mainAxisAlignment: MainAxisAlignment.center,
              //La palabra const means que nunca cambiara ese apartado
              children: const [
                //Imagen de google
                SqueareTild(imagePath: 'lib/images/google.png'),
                //Hacemos la separacion de las imagenes , agregando un sizedBox en medio
                const SizedBox(width: 25),
                //Imagen de apple
                SqueareTild(imagePath: 'lib/images/apple.png')
              ], 
              ),
              //Espacio entre la etiqueta y los botones
              const SizedBox(height: 50),
            //Aun no eres miembro? Registrate ahora
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('¿Aún no eres miembro?'),
                //Separador
                const SizedBox(width: 4),
                Text(
                  'Registrate ahora' ,
                  style: TextStyle(
                    color: Colors.blue,
                    //Propiedad para que sea en negrita
                    fontWeight: FontWeight.bold
                  ), 
                )
              ],
            ),
            //Fin del cuerpo de la app
            ],
          ),
        ),
        ),
    );
  }
}
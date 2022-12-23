import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:loginui/components/my_button.dart';
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
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
          children: [
          const SizedBox(height: 50),
            //Logo
              Icon(Icons.lock,
              size: 100,
              ),
              const SizedBox(height: 50),
              //welcome back 
              Text('Bienvenido de vuelta, ha pasado tiempo' , 
              style: TextStyle
              (
                color: Colors.grey[700],
                fontSize: 16,
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
                        'Continua con' , 
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

              //google + apple sign in icons buttons
              Row(
              children: [
                Image.asset('lib/images/google.png',
                height: 80,),
              ], 
              )








            ],
          ),
        ),
        ),
    );
  }
}
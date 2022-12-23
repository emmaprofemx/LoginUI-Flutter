import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 50),

              //Logo
              Icon(Icons.lock,
              size: 100,
              ),
              SizedBox(height: 50),

              //welcome back
              //campo de nombre de usuario
              //campo para password
              //olvidaste tu contra?
              //boton para ingresar
              //iniciar sesion con
              //google + apple sign in buttons
              //not a member? register now
            ],
          ),
        )),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:loginui/my_textfield.dart';

class LoginPage extends StatelessWidget {
LoginPage({super.key});

//text editing controllers
final usernameController = TextEditingController();
final passwordController = TextEditingController();
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
              const SizedBox(height: 50),//welcome back 
              Text('Bienvenido de vuelta' , 
              style: TextStyle
              (
                color: Colors.grey[700],
                fontSize: 30,
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
            ],
          ),
        ),
        ),
    );
  }
}
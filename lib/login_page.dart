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
            ],
          ),
        ),
        ),
    );
  }
}
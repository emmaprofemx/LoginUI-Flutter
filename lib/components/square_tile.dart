import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SqueareTild extends StatelessWidget {
  //Agregando atributos
  final String imagePath;
  const SqueareTild({
    super.key,
    required this.imagePath,
    });

  @override
  Widget build(BuildContext context) {
    return Container(
      //Propiedad para darle tamaño al boton
      padding: EdgeInsets.all(30),
      //Creamos el margen para el boton , le modificamos el color al marco
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white),
        //Le damos un borde al boton
        borderRadius: BorderRadius.circular(16),
        //Rellenamos la caja con el siguiente color
        color: Colors.grey[200]),
      child: Image.asset(
      imagePath,
      height: 40,),
    );
  }
}
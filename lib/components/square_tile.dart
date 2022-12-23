import 'package:flutter/cupertino.dart';
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
      child: Image.asset(imagePath),
    );
  }
}
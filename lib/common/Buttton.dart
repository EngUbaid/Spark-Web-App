import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  final String tittle;
  final VoidCallback ontap;
  final double width;
  final double height;
  final Color color;

  const Buttons(
      {super.key,
      required this.tittle,
      required this.ontap,
      required this.width,
      required this.height,
      required this.color,
      });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: color),
        child: Center(
          child: Text(
            tittle,
            style: TextStyle(color: Colors.white,fontSize: 12),
          ),
        ),
      ),
    );
  }
}

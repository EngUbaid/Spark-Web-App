import 'package:flutter/material.dart';

class TextfieldAddJob extends StatelessWidget {
  final double height;
  final double weith;
  final String hinttext;
  final Widget icon;
  final String validatortex;
  final TextEditingController controller;
  const TextfieldAddJob({
    super.key,
    required this.height,
    required this.weith,
    required this.hinttext,
    required this.icon,
    required this.validatortex,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: weith,
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          hintText: hinttext,
          hintStyle: TextStyle(fontSize: 14),
          suffixIcon: icon,
          contentPadding: EdgeInsets.all(8),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
        ),
        validator: (value) {
          if (value!.isEmpty) {
            return validatortex;
          } else {
            return null;
          }
        },
      ),
    );
  }
}

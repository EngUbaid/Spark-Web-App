import 'package:flutter/material.dart';

class TextbuttonAddjob extends StatelessWidget {
  final VoidCallback ontap;
  final String title;
  final bool isSelected;

  const TextbuttonAddjob(
      {super.key,
      required this.ontap,
      required this.title,
      this.isSelected = false});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
            onPressed: ontap,
            child: Text(
              title,
              style: TextStyle(
                  fontSize: 13, color: isSelected ? Colors.blue : Colors.black),
            )),
        if (isSelected)
          Container(
            height: 2,
            width: 60,
            color: Colors.blue,
            margin: EdgeInsets.only(top: 5), 
          )
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:spark/common/Buttton.dart';

class InstallRemarksScreen extends StatefulWidget {
  const InstallRemarksScreen({super.key});

  @override
  State<InstallRemarksScreen> createState() => _InstallRemarksScreenState();
}

class _InstallRemarksScreenState extends State<InstallRemarksScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextFormField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5)
            )
          ),
        ),
         SizedBox(
            height: 10,
          ),
          Buttons(
              tittle: "Update install Remarks",
              ontap: () {},
              width: 150,
              height: 40,
              color: Colors.blue),
      ],
    );
  }
}
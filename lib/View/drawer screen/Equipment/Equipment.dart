import 'package:flutter/material.dart';
import 'package:spark/common/Buttton.dart';

class EquipmentScreen extends StatefulWidget {
  const EquipmentScreen({super.key});

  @override
  State<EquipmentScreen> createState() => _EquipmentScreenState();
}

class _EquipmentScreenState extends State<EquipmentScreen> {
  bool isswitch = false;
  bool isssecondwitch = false;
  bool isthirdswitch = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Switch(
                  value: isswitch,
                  onChanged: (value) {
                    setState(() {
                      isswitch = value;
                    });
                  },
                ),
                Text("Equipment Work Order Submitted ")
              ],
            ),
            Row(
              children: [
                Switch(
                  value: isssecondwitch,
                  onChanged: (value) {
                    setState(() {
                      isssecondwitch = value;
                    });
                  },
                ),
                Text("Equipment Payment Submitted ")
              ],
            ),
            Row(
              children: [
                Switch(
                  value: isthirdswitch,
                  onChanged: (value) {
                    setState(() {
                      isthirdswitch = value;
                    });
                  },
                ),
                Text("Equipment Paymet Approved ")
              ],
            )
          ],
        ),
        const SizedBox(height: 20,),
        Align(
          alignment: Alignment.bottomRight,
          child: Buttons(
              tittle: "Update Equipment Acc",
              ontap: (){},
              width: 150,
              height: 40,
              color: Colors.blue),
        )
      ],
    );
  }
}

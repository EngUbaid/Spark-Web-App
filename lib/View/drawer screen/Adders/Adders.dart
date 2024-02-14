import 'package:flutter/material.dart';
import 'package:spark/common/Buttton.dart';

class AddersScreen extends StatefulWidget {
  const AddersScreen({super.key});

  @override
  State<AddersScreen> createState() => _AddersScreenState();
}

class _AddersScreenState extends State<AddersScreen> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Roof",
                  style: TextStyle(fontSize: 14),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 30,
                  width: width / 6,
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: '\$ i.e. 70000',
                      hintStyle: TextStyle(fontSize: 13),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5)),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              width: 15,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Trees",
                  style: TextStyle(fontSize: 14),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 30,
                  width: width / 6,
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: '\$ i.e. 24000',
                      hintStyle: TextStyle(fontSize: 13),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5)),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              width: 15,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Treanching",
                  style: TextStyle(fontSize: 14),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 30,
                  width: width / 6,
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: '\$ ',
                      hintStyle: TextStyle(fontSize: 13),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5)),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
         SizedBox(
            height: 10,
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Buttons(
                tittle: "Update Operations",
                ontap: () {},
                width: 150,
                height: 40,
                color: Colors.blue),
          ),
      ],
    );
  }
}

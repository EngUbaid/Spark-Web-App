import 'package:antd_icons/antd_icons.dart';
import 'package:flutter/material.dart';
import 'package:spark/common/Buttton.dart';

class Notes extends StatefulWidget {
  const Notes({super.key});

  @override
  State<Notes> createState() => _NotesState();
}

class _NotesState extends State<Notes> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Notes",
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 40,
              width: MediaQuery.of(context).size.width / 2.5,
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: "Types your notes or @mention user..",
                    hintStyle: TextStyle(fontSize: 14),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(0))),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Buttons(
                tittle: "Create",
                ontap: () {},
                width: 100,
                height: 40,
                color: Colors.blue)
          ],
        ),
        const SizedBox(
          height: 20,
        ),

        DataTable(
      columns:  [
        DataColumn(label: Text("Previous Stage")),
    
        DataColumn(label: Row(
          children: [
           AntdIcons.outlined.search.svg(height: 16,width: 16),
           Container(
            height: 20,
            child: VerticalDivider(thickness: 1,)),
            Text("User"),
          ],
        )),
        DataColumn(label: Text("Date")),
        DataColumn(label: Text("Action")),
     
      ],
      rows:  [
        DataRow(
          cells: [
            DataCell(Text("Roof Work Needed To be done")),
            DataCell(Text("Super Admin")),
           DataCell(Column(
              children: [
                Text("12-27-2023"),
                Text("12:03 AM"),
              ],
            )),
            DataCell(AntdIcons.outlined.delete.svg(height: 16,width: 16)),
          
           
          ],
        ),
      DataRow(
          cells: [
            DataCell(Text("Roof ")),
            DataCell(Text("Super Admin")),
           DataCell(Column(
              children: [
                Text("12-27-2023"),
                Text("12:03 AM"),
              ],
            )),
            DataCell(AntdIcons.outlined.delete.svg(height: 16,width: 16)),
          
           
          ],
        ),
      ],
    )

       ],
    );
  }
}

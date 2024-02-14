import 'package:antd_icons/antd_icons.dart';
import 'package:flutter/material.dart';

class AuditScreen extends StatefulWidget {
  const AuditScreen({super.key});

  @override
  State<AuditScreen> createState() => _AuditScreenState();
}

class _AuditScreenState extends State<AuditScreen> {
  @override
  Widget build(BuildContext context) {
    return DataTable(
      columns: const [
        DataColumn(label: Text("Previous Stage")),
        DataColumn(label: Text("Next Stage")),
        DataColumn(label: Text("User")),
        DataColumn(label: Text("Days")),
        DataColumn(label: Text("Hours")),
        DataColumn(label: Text("Job moved at")),
      ],
      rows: const [
        DataRow(
          cells: [
            DataCell(Text("Roof Work Needed To be done")),
            DataCell(Text("On Hold")),
            DataCell(Column(
              children: [
                Text("Vincent "),
                Text("Sirmento"),
              ],
            )),
            DataCell(Text("333")),
            DataCell(Text("12:03:50")),
            DataCell(Column(
              children: [
                Text("12-27-2023"),
                Text("12:03 AM"),
              ],
            )),
          ],
        ),
        DataRow(
          cells: [
            DataCell(Text("Pre Install Audit Fail")),
            DataCell(Text("Roof Works needs to be done")),
            DataCell(Column(
              children: [
                Text("Gerli  "),
                Text("Formenters"),
              ],
            )),
            DataCell(Text("178")),
            DataCell(Text("12:03:50")),
            DataCell(Column(
              children: [
                Text("12-27-2023"),
                Text("12:03 AM"),
              ],
            )),
          ],
        ),
      ],
    );
  }
}

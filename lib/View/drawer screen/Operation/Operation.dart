import 'package:antd_icons/antd_icons.dart';
import 'package:flutter/material.dart';
import 'package:spark/common/Buttton.dart';
import 'package:spark/common/single_dropdown.dart';

class Operation extends StatefulWidget {
  const Operation({super.key});

  @override
  State<Operation> createState() => _OperationState();
}

class _OperationState extends State<Operation> {
  bool isswitch = false;
  bool issecwitch = false;
  bool isthiswitch = false;
  bool isforswitch = false;
  bool isfifswitch = false;
  bool isixswitch = false;
  bool isevenswitch = false;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Survey Tech",
                    style: TextStyle(fontSize: 14),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 30,
                    width: width / 6,
                    child: const singledropdown(
                        hinttext: "",
                        tittle1: "Tech 1",
                        tittle2: "Tech 2",
                        tittle3: "Tech 3",
                        tittle4: "Tech 4",
                        tittle5: "Tech 5"),
                    // child: TextFormField(
                    //   decoration: InputDecoration(
                    //       border: OutlineInputBorder(
                    //           borderRadius: BorderRadius.circular(5)),
                    //       suffixIcon: Icon(Icons.arrow_drop_down)),
                    // ),
                  )
                ],
              ),
              SizedBox(
                width: 15,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
             const     Text(
                    "Build Partner",
                    style: TextStyle(fontSize: 14),
                  ),
              const    SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 30,
                    width: width / 6,
                    child: const singledropdown(
                        hinttext: "",
                        tittle1: "Tech 1",
                        tittle2: "Tech 2",
                        tittle3: "Tech 3",
                        tittle4: "Tech 4",
                        tittle5: "Tech 5"),
                    // child: TextFormField(
                    //   decoration: InputDecoration(
                    //       border: OutlineInputBorder(
                    //           borderRadius: BorderRadius.circular(5)),
                    //       suffixIcon: Icon(Icons.arrow_drop_down)),
                    // ),
                  )
                ],
              ),
           const   SizedBox(
                width: 15,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
           const       Text(
                    "Folder Link",
                    style: TextStyle(fontSize: 14),
                  ),
           const       SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 30,
                    width: width / 6,
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5)),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
       const   SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: width / 6,
                height: 70,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
             const       Text(
                      "Trenching",
                      style: TextStyle(fontSize: 14),
                    ),
              const      SizedBox(
                      height: 5,
                    ),
                    Switch(
                      value: isswitch,
                      onChanged: (value) {
                        setState(() {
                          isswitch = value;
                        });
                      },
                    )
                  ],
                ),
              ),
              Container(
                width: width / 6,
                height: 70,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
           const         Text(
                      "Roof Work needed",
                      style: TextStyle(fontSize: 14),
                    ),
              const      SizedBox(
                      height: 5,
                    ),
                    Switch(
                      value: issecwitch,
                      onChanged: (value) {
                        setState(() {
                          issecwitch = value;
                        });
                      },
                    )
                  ],
                ),
              ),
              Container(
                width: width / 6,
                height: 70,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
             const       Text(
                      "MSP",
                      style: TextStyle(fontSize: 14),
                    ),
           const         SizedBox(
                      height: 5,
                    ),
                    Switch(
                      value: isthiswitch,
                      onChanged: (value) {
                        setState(() {
                          isthiswitch = value;
                        });
                      },
                    )
                  ],
                ),
              )
            ],
          ),
     const     SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: width / 6,
                height: 70,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
              const      Text(
                      "Line Side Tap",
                      style: TextStyle(fontSize: 14),
                    ),
                 const   SizedBox(
                      height: 5,
                    ),
                    Switch(
                      value: isswitch,
                      onChanged: (value) {
                        setState(() {
                          isswitch = value;
                        });
                      },
                    )
                  ],
                ),
              ),
              Container(
                width: width / 6,
                height: 70,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
          const          Text(
                      "Structural",
                      style: TextStyle(fontSize: 14),
                    ),
            const        SizedBox(
                      height: 5,
                    ),
                    Switch(
                      value: issecwitch,
                      onChanged: (value) {
                        setState(() {
                          issecwitch = value;
                        });
                      },
                    )
                  ],
                ),
              ),
              Container(
                width: width / 6,
                height: 70,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
        const            Text(
                      "Meter Relocation",
                      style: TextStyle(fontSize: 14),
                    ),
         const           SizedBox(
                      height: 5,
                    ),
                    Switch(
                      value: isthiswitch,
                      onChanged: (value) {
                        setState(() {
                          isthiswitch = value;
                        });
                      },
                    )
                  ],
                ),
              )
            ],
          ),
      const    SizedBox(
            height: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
      const        Text(
                "Ground Mount",
                style: TextStyle(fontSize: 14),
              ),
       const       SizedBox(
                height: 5,
              ),
              Switch(
                value: isthiswitch,
                onChanged: (value) {
                  setState(() {
                    isthiswitch = value;
                  });
                },
              )
            ],
          ),
      const    SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
           const       Text(
                    "Roof Type",
                    style: TextStyle(fontSize: 14),
                  ),
           const       SizedBox(
                    height: 5,
                  ),
                  Container(
                    height: 30,
                    width: width / 6,
                    child: TextFormField(
                      decoration: InputDecoration(
                          hintText: "Shingle",
                          hintStyle: TextStyle(fontSize: 13),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5)),
                          suffixIcon: Icon(Icons.arrow_drop_down)),
                    ),
                  )
                ],
              ),
        const      SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
           const       Text(
                    "Permit Status",
                    style: TextStyle(fontSize: 14),
                  ),
            const      SizedBox(
                    height: 5,
                  ),
                  Container(
                    height: 30,
                    width: width / 6,
                    child: TextFormField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5)),
                          suffixIcon: Icon(Icons.arrow_drop_down)),
                    ),
                  )
                ],
              ),
         const     SizedBox(
                width: 15,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
             const     Text(
                    "IC App Status",
                    style: TextStyle(fontSize: 14),
                  ),
            const      SizedBox(
                    height: 5,
                  ),
                  Container(
                    height: 30,
                    width: width / 6,
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5)),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
       const   SizedBox(
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
          const Text(
            "Operation Notes",
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 40,
                width: MediaQuery.of(context).size.width / 2,
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
                  tittle: "Add Note",
                  ontap: () {},
                  width: 100,
                  height: 40,
                  color: Colors.blue)
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          DataTable(
            columns: const[
              DataColumn(label: Text("Note")),
              DataColumn(
                label: Text("Date"),
              ),
              DataColumn(label: Text("Created by")),
              DataColumn(label: Text("Action")),
            ],
            rows: [
              DataRow(
                cells: [
             const     DataCell(Text("Roof Work Needed To be done")),
             const     DataCell(Text("Super Admin")),
             const     DataCell(Column(
                    children: [
                      Text("12-27-2023"),
                      Text("12:03 AM"),
                    ],
                  )),
                  DataCell(TextButton(onPressed: () {}, child:const Text("Delete"))),
                ],
              ),
              DataRow(
                cells: [
                const  DataCell(Text("Roof ")),
                const  DataCell(Text("Super Admin")),
               const   DataCell(Column(
                    children: [
                      Text("12-27-2023"),
                      Text("12:03 AM"),
                    ],
                  )),
                  DataCell(TextButton(onPressed: () {}, child:const Text("Delete"))),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}

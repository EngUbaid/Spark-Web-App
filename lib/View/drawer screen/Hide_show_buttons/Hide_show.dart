import 'package:flutter/material.dart';
import 'package:spark/View/drawer%20screen/Adders/Adders.dart';
import 'package:spark/View/drawer%20screen/Audit/Audit.dart';
import 'package:spark/View/drawer%20screen/Costemer_Info/costemer_info.dart';
import 'package:spark/View/drawer%20screen/Equipment/Equipment.dart';
import 'package:spark/View/drawer%20screen/Install_Remarks/install_remarks.dart';
import 'package:spark/View/drawer%20screen/Notes/Notes.dart';
import 'package:spark/View/drawer%20screen/Operation/Operation.dart';
import 'package:spark/View/drawer%20screen/add_job_data/add_job.dart';
import 'package:spark/common/Add_Job_Textbutton.dart';
import 'package:spark/common/Buttton.dart';

class hideshodata extends StatefulWidget {
  const hideshodata({super.key});

  @override
  State<hideshodata> createState() => _hideshodataState();
}

class _hideshodataState extends State<hideshodata> {
  bool isswitches = false;
  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.start,

      //  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const Text("Hide Empty Stages"),
        const SizedBox(
          width: 10,
        ),
        Transform.scale(
          scale: 0.8,
          child: Switch(
            value: isswitches,
            onChanged: (value) {
              setState(() {
                isswitches = value;
              });
            },
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Container(
            width: 250,
            height: 30,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(8)),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search job',
                suffixIcon: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      VerticalDivider(
                        color: Colors.black,
                        thickness: 0.2,
                      ),
                      Icon(Icons.search),
                    ],
                  ),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 9, vertical: 0),
              ),
            )),
        const SizedBox(
          width: 10,
        ),
        Buttons(
            color: Color.fromRGBO(22, 119, 255, 2),
            tittle: "Export",
            ontap: () {},
            width: 70,
            height: 25),
        const SizedBox(
          width: 10,
        ),
        Buttons(
            color: Color.fromRGBO(22, 119, 255, 2),
            tittle: "Export with Audits",
            ontap: () {},
            width: 130,
            height: 25),
        const SizedBox(
          width: 10,
        ),
        Buttons(
            color: Color.fromRGBO(22, 119, 255, 2),
            tittle: "Job Stages",
            ontap: () {},
            width: 80,
            height: 25),
        const SizedBox(
          width: 10,
        ),
        Buttons(
            color: Color.fromRGBO(22, 119, 255, 2),
            tittle: "Show/Hide Stages",
            ontap: () {},
            width: 130,
            height: 25),
        const SizedBox(
          width: 10,
        ),
        Buttons(
            width: 70,
            height: 25,
            color: Color.fromRGBO(22, 119, 255, 2),
            tittle: "Add Job",
            ontap: () {
              showAddJobDialog(context);
            })
      ],
    );
  }
}

void showAddJobDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      String selectedTab = "Job Info";
      // Wrap your widget in a StatefulBuilder to rebuild the dialog when setState is called
      return StatefulBuilder(
        builder: (BuildContext context, StateSetter setState) {
          return AlertDialog(
            title: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Add Job "),
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.close, size: 18),
                  ),
                ],
              ),
              const Divider(
                thickness: 0.5,
                color: Colors.black,
              ),
            ]),
            content: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  Row(
                    children: [
                      TextbuttonAddjob(
                        ontap: () {
                          setState(() {
                            selectedTab = "Job Info";
                          });
                        },
                        title: "Job Info",
                        isSelected: selectedTab == "Job Info",
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      TextbuttonAddjob(
                        ontap: () {
                          setState(() {
                            selectedTab = "Customer Info";
                          });
                        },
                        title: "Customer Info",
                        isSelected: selectedTab == "Customer Info",
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      TextbuttonAddjob(
                        ontap: () {
                          setState(() {
                            selectedTab = "Notes";
                          });
                        },
                        title: "Notes",
                        isSelected: selectedTab == "Notes",
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      TextbuttonAddjob(
                        ontap: () {
                          setState(() {
                            selectedTab = "Audit";
                          });
                        },
                        title: "Audit",
                        isSelected: selectedTab == "Audit",
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      TextbuttonAddjob(
                        ontap: () {
                          setState(() {
                            selectedTab = "Equipment";
                          });
                        },
                        title: "Equipment",
                        isSelected: selectedTab == "Equipment",
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      TextbuttonAddjob(
                        ontap: () {
                          setState(() {
                            selectedTab = "Operation";
                          });
                        },
                        title: "Operation",
                        isSelected: selectedTab == "Operation",
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      TextbuttonAddjob(
                        ontap: () {
                          setState(() {
                            selectedTab = "Adders";
                          });
                        },
                        title: "Adders",
                        isSelected: selectedTab == "Adders",
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      TextbuttonAddjob(
                        ontap: () {
                          setState(() {
                            selectedTab = "install Remarks";
                          });
                        },
                        title: "install Remarks",
                        isSelected: selectedTab == "install Remarks",
                      ),
                      // Add similar lines for other text buttons
                    ],
                  ),
                  const Divider(
                    thickness: 0.5,
                    color: Colors.black,
                  ),
                  // Display content based on the selected tab
                  if (selectedTab == "Job Info") const Addjobdata(),
                  if (selectedTab == "Customer Info") const Costemerinfo(),
                  if (selectedTab == "Notes") const Notes(),
                  if (selectedTab == "Audit") const AuditScreen(),
                  if (selectedTab == "Equipment") const EquipmentScreen(),
                  if (selectedTab == "Operation") const Operation(),
                  if (selectedTab == "Adders") const AddersScreen(),
                  if (selectedTab == "install Remarks")
                    const InstallRemarksScreen(),
                ],
              ),
            ),
          );
        },
      );
    },
  );
}

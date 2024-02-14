import 'package:antd_icons/antd_icons.dart';
import 'package:flutter/material.dart';
import 'package:spark/common/mulit_dropdown.dart';
import 'package:spark/common/single_date_picker.dart';
import 'package:spark/common/single_dropdown.dart';

class Addjobdata extends StatefulWidget {
  const Addjobdata({super.key});

  @override
  State<Addjobdata> createState() => _AddjobdataState();
}

class _AddjobdataState extends State<Addjobdata> {
  final _form = GlobalKey<FormState>();
  final TextEditingController Surveycontroler = TextEditingController();
  bool isvalid = false;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Form(
      key: _form,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Job Detail",
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Job Stage",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Container(
                    // padding: EdgeInsets.only(left: 8, right: 8, bottom: 1,top: 3),
                    height: 30,
                    width: width / 6,

                    child: const singledropdown(
                        hinttext: "Verifing Paper work",
                        tittle1: "Paper 1",
                        tittle2: "Paper 2",
                        tittle3: "Paper 3",
                        tittle4: "Paper 4",
                        tittle5: "Paper 5"),
                  ),
                ],
              ),
              const SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Survey Schedule Date",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Container(
                    height: 50,
                    width: width / 6,
                    child: Singledatepicker(
                      hinttext: "Select Date",
                      icon: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          AntdIcons.outlined.calendar
                              .svg(height: 16, width: 16),
                        ],
                      ),
                    ),
                    // child: TextFormField(
                    //   maxLines: 5,
                    //   controller: Surveycontroler,
                    //   decoration: InputDecoration(
                    //       hintText: 'Select Date',
                    //       hintStyle: TextStyle(fontSize: 13),
                    //       isDense: true,
                    //       border: OutlineInputBorder(
                    //         borderRadius: BorderRadius.circular(5),
                    //       ),
                    //       suffixIcon: Column(
                    //         mainAxisAlignment: MainAxisAlignment.center,
                    //         children: [
                    //           AntdIcons.outlined.calendar
                    //               .svg(height: 18, width: 18)
                    //         ],
                    //       )),
                    //   validator: (value) {
                    //     if (value!.isEmpty) {
                    //       return "Please Select a Survey Schedule Date";
                    //     } else {
                    //       return null;
                    //     }
                    //   },
                    // ),
                  )
                ],
              ),
              const SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Install Schedule Date",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Container(
                    //   padding: EdgeInsets.only(left: 8, right: 8, bottom: 3),
                    height: 50,
                    width: width / 6,
                    child: Singledatepicker(
                      isfilled: true,
                      hinttext: "Select Date",
                      icon: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          AntdIcons.outlined.calendar
                              .svg(height: 16, width: 16),
                        ],
                      ),
                    ),
                    // child: TextFormField(
                    //   maxLines: 5,
                    //   controller: Surveycontroler,
                    //   decoration: InputDecoration(
                    //       filled: true,
                    //       hintText: 'Select Date',
                    //       hintStyle: TextStyle(fontSize: 13),
                    //       isDense: true,
                    //       border: OutlineInputBorder(
                    //         borderRadius: BorderRadius.circular(5),
                    //       ),
                    //       suffixIcon: Icon(Icons.arrow_drop_down)),
                    // ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Project #",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  SizedBox(
                    height: 30,
                    width: width / 6,
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'i.e. Doland, Raymond - 1488',
                        hintStyle: TextStyle(fontSize: 13),
                        isDense: true,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5)),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Project # is required";
                        } else {
                          return null;
                        }
                      },
                    ),
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "System Size(Max 30)",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  SizedBox(
                    height: 30,
                    width: width / 6,
                    child: TextFormField(
                      controller: Surveycontroler,
                      decoration: InputDecoration(
                        hintText: 'i.e. 10.45',
                        hintStyle: TextStyle(fontSize: 13),
                        isDense: true,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5)),
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
                              Text("Kw"),
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Module Name",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  SizedBox(
                    height: 30,
                    width: width / 6,
                    child: const singledropdown(
                        hinttext: "i.e. Silfab 340",
                        tittle1: "Module 1",
                        tittle2: "Module 2",
                        tittle3: "Module 3",
                        tittle4: "Module 4",
                        tittle5: "Module 5"),
                  )
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Module Quantity",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  SizedBox(
                    height: 30,
                    width: width / 6,
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'i.e. 26',
                        hintStyle: TextStyle(fontSize: 13),
                        isDense: true,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5)),
                      ),
                    ),
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Inverters",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  SizedBox(
                    height: 30,
                    width: width / 6,
                    child: const Multidropdownstting(
                        hintext: 'i.e Solar Edge',
                        tittle1: "Inverter 1",
                        tittle2: "Inverter 2",
                        tittle3: "Inverter 3",
                        tittle4: "Inverter 4",
                        tittle5: "Inverter 5"),
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Battery Type",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  SizedBox(
                    height: 30,
                    width: width / 6,
                    child: const singledropdown(
                        hinttext: "",
                        tittle1: "Type 1",
                        tittle2: "Type 2",
                        tittle3: "Type 3",
                        tittle4: "Type 4",
                        tittle5: "Type 5"),
                    // child: TextFormField(
                    //   controller: Surveycontroler,
                    //   decoration: InputDecoration(
                    //       isDense: true,
                    //       border: OutlineInputBorder(
                    //           borderRadius: BorderRadius.circular(5)),
                    //       suffixIcon: Icon(Icons.arrow_drop_down)),
                    // ),
                  )
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "Electric Company Detail",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Utility Company",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  SizedBox(
                    height: 30,
                    width: width / 6,
                    child: const singledropdown(
                        hinttext: "",
                        tittle1: "Company 1",
                        tittle2: "Company 2",
                        tittle3: "Company 3",
                        tittle4: "Company 4",
                        tittle5: "Company 5"),
                  )
                ],
              ),
              const SizedBox(
                width: 30,
              ),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Account #",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      SizedBox(
                        height: 30,
                        width: width / 14,
                        child: TextFormField(
                          controller: Surveycontroler,
                          decoration: InputDecoration(
                            hintText: 'i.e. 5673688',
                            hintStyle: TextStyle(fontSize: 13),
                            isDense: true,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Meter #",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      SizedBox(
                        height: 30,
                        width: width / 14,
                        child: TextFormField(
                          controller: Surveycontroler,
                          decoration: InputDecoration(
                            hintText: 'i.e.8645377',
                            hintStyle: TextStyle(fontSize: 13),
                            isDense: true,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "Contract Detail",
            style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Deal Type",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  SizedBox(
                    height: 30,
                    width: width / 6,
                    child: const singledropdown(
                        hinttext: "",
                        tittle1: "Deal 1",
                        tittle2: "Deal 2",
                        tittle3: "Deal 3",
                        tittle4: "Deal 4",
                        tittle5: "Deal 5"),
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Contract Price",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  SizedBox(
                    height: 30,
                    width: width / 6,
                    child: TextFormField(
                      controller: Surveycontroler,
                      decoration: InputDecoration(
                        hintText: 'i.e. 50000',
                        hintStyle: TextStyle(fontSize: 13),
                        isDense: true,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5)),
                        prefixIcon: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: const Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text("\$"),
                              VerticalDivider(
                                color: Colors.black,
                                thickness: 0.2,
                              ),
                            ],
                          ),
                        ),
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
                              Text(".00"),
                            ],
                          ),
                        ),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Project select contract Price";
                        } else {
                          return null;
                        }
                      },
                    ),
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Credit Expiration Date",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                  ),
                  // const SizedBox(
                  //   height: 5,
                  // ),
                  Container(
                    height: 50,
                    width: width / 6,
                    child: Singledatepicker(
                      isfilled: false,
                      hinttext: "Select Date",
                      icon: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          AntdIcons.outlined.calendar
                              .svg(height: 16, width: 16),
                        ],
                      ),
                    ),
                    // child: TextFormField(
                    //   controller: Surveycontroler,
                    //   decoration: InputDecoration(
                    //       hintText: 'Select Date',
                    //       hintStyle: TextStyle(fontSize: 13),
                    //       isDense: true,
                    //       border: OutlineInputBorder(
                    //           borderRadius: BorderRadius.circular(5)),
                    //       suffixIcon: Column(
                    //         mainAxisAlignment: MainAxisAlignment.center,
                    //         children: [
                    //           AntdIcons.outlined.calendar
                    //               .svg(height: 18, width: 18),
                    //         ],
                    //       )),
                    //   validator: (value) {
                    //     if (value!.isEmpty) {
                    //       return "Project select Credit Expiration Date";
                    //     } else {
                    //       return null;
                    //     }
                    //   },
                    // ),
                  )
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Financing",
                style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 5,
              ),
              SizedBox(
                height: 30,
                width: width / 6,
                child: const singledropdown(
                    hinttext: "",
                    tittle1: "Financing 1",
                    tittle2: "Financing 2",
                    tittle3: "Financing 3",
                    tittle4: "Financing 4",
                    tittle5: "Financing 5"),
              )
            ],
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: ElevatedButton(
                onPressed: () {
                  if (_form.currentState!.validate()) {}
                },
                child: const Text(
                  "Next",
                  style: TextStyle(fontSize: 13),
                )),
          ),
        ],
      ),
    );
  }
}

import 'package:antd_icons/antd_icons.dart';
import 'package:flutter/material.dart';
import 'package:spark/common/Dropdown.dart';
import 'package:spark/common/mulit_dropdown.dart';

class Settingdrawerdat extends StatefulWidget {
  const Settingdrawerdat({super.key});

  @override
  State<Settingdrawerdat> createState() => _SettingdrawerdatState();
}

class _SettingdrawerdatState extends State<Settingdrawerdat> {
  DateTimeRange? range;
  DateTimeRange? rangetwo;
  DateTimeRange? rangethree;
  var _selectednoValue1 = 0;
  var _selectednoValue2 = 0;
  var _selectednoValue3 = 0;
  var _selectedyesValue1 = 0;
  var _selectedyesValue2 = 0;
  var _selectedyesValue3 = 0;

  String _formatDate(DateTime date) {
    return "${date.day}-${date.month}-${date.year}";
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            ListTile(
              leading: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                    height: 18, width: 18, child: AntdIcons.outlined.close.svg()),
              ),
              title: Text("Job Filters"),
            ),
            const Divider(
              thickness: 1,
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView(
                children: [
                  //first textfield
              
                  const Text(
                    "Survey Scheduled Date",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
                  ),
              
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 35,
                    child: TextField(
                      onTap: () {
                        showdate();
                      },
                      decoration: InputDecoration(
                        suffixIcon: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                range != null
                                    ? " ${_formatDate(range!.start)}"
                                    : "Start Date",
                                // " Start Date",
                                style: TextStyle(fontSize: 13),
                              ),
                              Row(
                                children: [
                                  AntdIcons.outlined.arrowRight
                                      .svg(height: 18, width: 18),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    range != null
                                        ? " ${_formatDate(range!.end)}"
                                        : "End Date",
                                    style: TextStyle(fontSize: 13),
                                  ),
                                ],
                              ),
                              AntdIcons.outlined.calendar
                                  .svg(height: 18, width: 18),
                            ],
                          ),
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        contentPadding: EdgeInsets.symmetric(horizontal: 10),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
              
                  // second textfield
              
                  const Text(
                    "Install Scheduled Date",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 35,
                    child: TextField(
                      onTap: () {
                        showdatetwo();
                      },
                      decoration: InputDecoration(
                          suffixIcon: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  rangetwo != null
                                      ? "${_formatDate(rangetwo!.start)}"
                                      : " Start Date",
                                  style: TextStyle(fontSize: 13),
                                ),
                                Row(
                                  children: [
                                    AntdIcons.outlined.arrowRight
                                        .svg(height: 18, width: 18),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      rangetwo != null
                                          ? "${_formatDate(rangetwo!.end)}"
                                          : " End Date",
                                      style: TextStyle(fontSize: 13),
                                    ),
                                  ],
                                ),
                                AntdIcons.outlined.calendar
                                    .svg(height: 18, width: 18),
                              ],
                            ),
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                          contentPadding: EdgeInsets.symmetric(horizontal: 10)),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  //third textfield
                  const Text(
                    "Teams ",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 35,
                    child: const Multidropdownstting(
                      hintext: '',
                      tittle1: 'Team 1',
                      tittle2: "team 2",
                      tittle3: "team 3",
                      tittle4: 'team 4',
                      tittle5: 'team 5',
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
              
                  //forth textfield
                  const Text(
                    "Sales Rep ",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 35,
                    child: const Multidropdownstting(
                        hintext: '',
                        tittle1: 'Sale 1 400',
                        tittle2: "Sale 2 200",
                        tittle3: "Sale 3 1000",
                        tittle4: "sales 4 2000",
                        tittle5: "Sale 5 7000"),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
              
                  //fifth textfield
                  const Text(
                    "Job Stages ",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 35,
                    child: const Multidropdownstting(
                        hintext: '',
                        tittle1: 'Stage 1 ',
                        tittle2: "Stage 2 ",
                        tittle3: "Stage 3 ",
                        tittle4: "Stage 4 ",
                        tittle5: "Stage 5 "),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
              
                  //six textfield
                  const Text(
                    "Days in Stages ",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 35,
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: 'i.e.50',
                          hintStyle: TextStyle(fontSize: 13),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                          contentPadding: EdgeInsets.all(8)),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
              
                  //seven textfield
                  const Text(
                    "Utility Company ",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 35,
                    child: const Multidropdownstting(
                        hintext: '',
                        tittle1: 'Company 1 ',
                        tittle2: "Company 2 ",
                        tittle3: "Company 3 ",
                        tittle4: "Company 4 ",
                        tittle5: "Company 5 "),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  //eight textfield
                  const Text(
                    "Inverters ",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 35,
                    child: const Multidropdownstting(
                        hintext: '',
                        tittle1: 'Inverters 1 ',
                        tittle2: "Inverters 2 ",
                        tittle3: "Inverters 3 ",
                        tittle4: "Inverters 4 ",
                        tittle5: "Inverters 5 "),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
              
                  //nine textfield
                  const Text(
                    "Lead Source  ",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 35,
                    child: const Multidropdownstting(
                        hintext: '',
                        tittle1: 'Lead Source 1 ',
                        tittle2: "Lead Source  2 ",
                        tittle3: "Lead Source  3 ",
                        tittle4: "Lead Source  4 ",
                        tittle5: "Lead Source  5 "),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
              
                  //ten textfield
                  const Text(
                    "Module Type ",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 35,
                    child: const Multidropdownstting(
                        hintext: '',
                        tittle1: 'Module Type 1 ',
                        tittle2: "Module Type  2 ",
                        tittle3: "Module Type  3 ",
                        tittle4: "Module Type 4 ",
                        tittle5: "Module Type 5 "),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
              
                  //eleven textfield
                  const Text(
                    "Build Partners ",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 35,
                    child: const Multidropdownstting(
                        hintext: '',
                        tittle1: 'Build Partners 1 ',
                        tittle2: "Build Partners  2 ",
                        tittle3: "Build Partners  3 ",
                        tittle4: "Build Partners 4 ",
                        tittle5: "Build Partners 5 "),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
              
                  //12 textfield
                  const Text(
                    "States ",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 35,
                    child: const Multidropdownstting(
                        hintext: '',
                        tittle1: 'Stages 1 ',
                        tittle2: "Stages  2 ",
                        tittle3: "Stages  3 ",
                        tittle4: "Stages 4 ",
                        tittle5: "Stages5 "),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
              
                  //13 textfield
                  const Text(
                    "City ",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 35,
                    child: TextField(
                      decoration: InputDecoration(
                        suffixIcon: Dropdownsetting(),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
              
                  //14 textfield
                  const Text(
                    "Organization ",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 35,
                    child: const Multidropdownstting(
                        hintext: '',
                        tittle1: 'Organization 1 ',
                        tittle2: "Organization  2 ",
                        tittle3: "Organization  3 ",
                        tittle4: "Organization 4 ",
                        tittle5: "Organization 5 "),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
              
                  //15 textfield
                  const Text(
                    "Financing ",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 35,
                    child: const Multidropdownstting(
                        hintext: '',
                        tittle1: 'Financing 1 ',
                        tittle2: "Financing  2 ",
                        tittle3: "Financing  3 ",
                        tittle4: "Financing 4 ",
                        tittle5: "Financing 5 "),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
              
                  //16 textfield
                  const Text(
                    "Battery Type ",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 35,
                    child: TextField(
                      decoration: InputDecoration(
                        suffixIcon: Dropdownsetting(),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
              
                  //17 and 18 textfield
                  const Text(
                    "Contract Price  ",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 35,
                          width: MediaQuery.of(context).size.width / 8.7,
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: '\$ Min Value',
                              hintStyle: TextStyle(fontSize: 12),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                          ),
                        ),
                        Container(
                          height: 35,
                          width: MediaQuery.of(context).size.width / 8.7,
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: '\$ Max Value',
                              hintStyle: TextStyle(fontSize: 12),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
              
                  //19 and 20 textfield
                  const Text(
                    "System Size ",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 35,
                          width: MediaQuery.of(context).size.width / 8.7,
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Min Value',
                              hintStyle: TextStyle(fontSize: 12),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                          ),
                        ),
                        Container(
                          height: 35,
                          width: MediaQuery.of(context).size.width / 8.7,
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: ' Max Value',
                              hintStyle: TextStyle(fontSize: 12),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
              
                  //21 and 22 textfield
                  const Text(
                    "Module Quantity ",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 35,
                          width: MediaQuery.of(context).size.width / 8.7,
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: ' Min Value',
                              hintStyle: TextStyle(fontSize: 12),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                          ),
                        ),
                        Container(
                          height: 35,
                          width: MediaQuery.of(context).size.width / 8.7,
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: ' Max Value',
                              hintStyle: TextStyle(fontSize: 12),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
              
                  //23 textfield
                  const Text(
                    "Credit Date  ",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 35,
                    child: TextField(
                      onTap: () {
                        showdatethree();
                      },
                      decoration: InputDecoration(
                        suffixIcon: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                rangethree != null
                                    ? "${_formatDate(rangethree!.start)}"
                                    : " Start Date",
                                style: TextStyle(fontSize: 13),
                              ),
                              Row(
                                children: [
                                  AntdIcons.outlined.arrowRight
                                      .svg(height: 18, width: 18),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    rangethree != null
                                        ? '${_formatDate(rangethree!.end)}'
                                        : " End Date",
                                    style: TextStyle(fontSize: 13),
                                  ),
                                ],
                              ),
                              AntdIcons.outlined.calendar
                                  .svg(height: 18, width: 18),
                            ],
                          ),
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Equipment Work Order Submitted  ",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
              
                  Row(
                    children: [
                      Radio(
                        value: 1,
                        groupValue: _selectedyesValue1,
                        onChanged: (value) {
                          setState(() {
                            _selectedyesValue1 = value!;
                          });
                        },
                      ),
                      const Text("Yes"),
                      const SizedBox(width: 20),
                      Radio(
                        value: 1,
                        groupValue: _selectednoValue1,
                        onChanged: (value) {
                          setState(() {
                            _selectednoValue1 = value!;
                          });
                        },
                      ),
                      const Text("No"),
                    ],
                  ),
              
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Equipment Payement  Submitted  ",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
              
                  Row(
                    children: [
                      Radio(
                        value: 1,
                        groupValue: _selectedyesValue2,
                        onChanged: (value) {
                          setState(() {
                            _selectedyesValue2 = value!;
                          });
                        },
                      ),
                      const Text("Yes"),
                      const SizedBox(width: 20),
                      Radio(
                        value: 2,
                        groupValue: _selectednoValue2,
                        onChanged: (value) {
                          _selectednoValue2 = value!;
                        },
                      ),
                      const Text("No"),
                    ],
                  ),
              
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Equipment Payment Approved  ",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
              
                  Row(
                    children: [
                      Radio(
                        value: 1,
                        groupValue: _selectedyesValue3,
                        onChanged: (value) {
                          setState(() {
                            _selectedyesValue3 = value!;
                          });
                        },
                      ),
                      Text("Yes"),
                      SizedBox(width: 20),
                      Radio(
                        value: 1,
                        groupValue: _selectednoValue3,
                        onChanged: (value) {
                          setState(() {
                            _selectednoValue3 = value!;
                          });
                        },
                      ),
                      Text("No"),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  showdate() async {
    DateTimeRange? datetimerang = await showDateRangePicker(
      context: context,
      firstDate: DateTime(2022),
      lastDate: DateTime(2024),
      builder: (context, child) {
        return Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 80),
              child: SizedBox(
                height: 500,
                width: 500,
                child: child,
              ),
            ),
          ],
        );
      },
    );
    if (datetimerang != null) {
      setState(() {
        range = datetimerang;
      });
    }
  }

  showdatetwo() async {
    DateTimeRange? datetimerangtwo = await showDateRangePicker(
      context: context,
      firstDate: DateTime(2021),
      lastDate: DateTime(2024),
      builder: (context, child) {
        return Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 80),
              child: SizedBox(
                height: 500,
                width: 500,
                child: child,
              ),
            ),
          ],
        );
      },
    );
    if (datetimerangtwo != null) {
      setState(() {
        rangetwo = datetimerangtwo;
      });
    }
  }

  showdatethree() async {
    DateTimeRange? datetimerangthree = await showDateRangePicker(
      context: context,
      firstDate: DateTime(2021),
      lastDate: DateTime(2024),
      builder: (context, child) {
        return Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 80),
              child: SizedBox(
                height: 500,
                width: 500,
                child: child,
              ),
            ),
          ],
        );
      },
    );
    if (datetimerangthree != null) {
      setState(() {
        rangethree = datetimerangthree;
      });
    }
  }
}

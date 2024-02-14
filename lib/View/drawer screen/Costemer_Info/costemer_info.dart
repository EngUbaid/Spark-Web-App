import 'package:antd_icons/antd_icons.dart';
import 'package:flutter/material.dart';
import 'package:spark/common/Buttton.dart';
import 'package:spark/common/single_date_picker.dart';
import 'package:spark/common/single_dropdown.dart';

class Costemerinfo extends StatefulWidget {
  const Costemerinfo({super.key});

  @override
  State<Costemerinfo> createState() => _CostemerinfoState();
}

class _CostemerinfoState extends State<Costemerinfo> {
  final _form = GlobalKey<FormState>();
  final TextEditingController Surveycontroler = TextEditingController();
  bool isvalid = false;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      child: Form(
        key: _form,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Sales Rep",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                      height: 30,
                      width: width / 6,
                      child: TextFormField(
                        controller: Surveycontroler,
                        decoration: InputDecoration(
                            hintText: 'Rick Steehler',
                            hintStyle: TextStyle(fontSize: 13),
                            isDense: true,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                            suffixIcon: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors.grey,
                                  radius: 8,
                                  child: AntdIcons.outlined.close
                                      .svg(height: 15, width: 15),
                                )
                              ],
                            )),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Please Select a Survey Schedule Date";
                          } else {
                            return null;
                          }
                        },
                      ),
                    )
                  ],
                ),
                SizedBox(
                  width: 25,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Manager",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                      height: 30,
                      width: width / 6,
                      child: TextFormField(
                        controller: Surveycontroler,
                        decoration: InputDecoration(
                          filled: true,
                          hintText: 'Rick Steehler',
                          hintStyle: TextStyle(fontSize: 13),
                          isDense: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Please Select a Survey Schedule Date";
                          } else {
                            return null;
                          }
                        },
                      ),
                    )
                  ],
                ),
                SizedBox(
                  width: 25,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Organization",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                      height: 30,
                      width: width / 6,
                      child: TextFormField(
                        decoration: InputDecoration(
                          filled: true,
                          hintText: 'Empower Energy Solution ',
                          hintStyle: TextStyle(fontSize: 13),
                          isDense: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Please Select a Survey Schedule Date";
                          } else {
                            return null;
                          }
                        },
                      ),
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
                      "Customer First Name",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    SizedBox(
                      height: 30,
                      width: width / 6,
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: 'whitney',
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
                SizedBox(
                  width: 25,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Customer Last Name",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
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
                          hintText: 'Dziama',
                          hintStyle: TextStyle(fontSize: 13),
                          isDense: true,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5)),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  width: 25,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Email Address",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
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
                            isDense: true,
                            hintText: 'xyz@gmail.com',
                            hintStyle: TextStyle(fontSize: 13),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ))
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Customer 2 First Name",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    SizedBox(
                      height: 30,
                      width: width / 6,
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: 'i.e. Raymond',
                          hintStyle: TextStyle(fontSize: 13),
                          isDense: true,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5)),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  width: 25,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Customer 2 Last Name",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    SizedBox(
                      height: 30,
                      width: width / 6,
                      child: TextFormField(
                        controller: Surveycontroler,
                        decoration: InputDecoration(
                          hintText: 'i.e. Dolan',
                          hintStyle: TextStyle(fontSize: 13),
                          isDense: true,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5)),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Please Select Inverters";
                          }
                        },
                      ),
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "initial Contract Date",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                    ),
                    // SizedBox(
                    //   height: 5,
                    // ),
                    SizedBox(
                      height: 50,
                      width: width / 6,
                      child: Singledatepicker(
                        isfilled: false,
                        hinttext: "10-6-2022",
                        icon: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            AntdIcons.outlined.calendar
                                .svg(height: 16, width: 16),
                          ],
                        ),
                      ),
                      // child: TextFormField(
                      //   decoration: InputDecoration(
                      //       hintText: '10-6-2022',
                      //       hintStyle: TextStyle(fontSize: 13),
                      //       isDense: true,
                      //       border: OutlineInputBorder(
                      //           borderRadius: BorderRadius.circular(5)),
                      //       suffixIcon: Column(
                      //         mainAxisAlignment: MainAxisAlignment.center,
                      //         crossAxisAlignment: CrossAxisAlignment.center,
                      //         children: [
                      //           AntdIcons.outlined.calendar
                      //               .svg(height: 18, width: 18)
                      //         ],
                      //       )),
                      // ),
                    )
                  ],
                ),
                SizedBox(
                  width: 25,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Lead Source",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    SizedBox(
                      height: 30,
                      width: width / 6,
                      child: const singledropdown(
                          hinttext: "Comapny Gen: Online",
                          tittle1: "Comapny 1",
                          tittle2: "Comapny 2",
                          tittle3: "Comapny 3",
                          tittle4: "Comapny 4",
                          tittle5: "Comapny 5"),
                      // child: TextFormField(
                      //   controller: Surveycontroler,
                      //   decoration: InputDecoration(
                      //       hintText: 'Comapny Gen: Online',
                      //       hintStyle: TextStyle(fontSize: 13),
                      //       isDense: true,
                      //       border: OutlineInputBorder(
                      //         borderRadius: BorderRadius.circular(5),
                      //       ),
                      //       suffixIcon: Icon(Icons.arrow_drop_down_outlined)),
                      // ),
                    )
                  ],
                ),
                const SizedBox(
                  width: 25,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Address",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
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
                          hintText: '41 Smith St Lincoln',
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
                      "State",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    SizedBox(
                      height: 30,
                      width: width / 6,
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Rhode Island',
                          hintStyle: TextStyle(fontSize: 13),
                          isDense: true,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5)),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Project select a Deal Type";
                          } else {
                            return null;
                          }
                        },
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  width: 25,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Meter Info",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    SizedBox(
                      height: 30,
                      width: width / 6,
                      child: const singledropdown(
                          hinttext: 'Net Metering',
                          tittle1: "info 1",
                          tittle2: "info 2",
                          tittle3: "info 3",
                          tittle4: "info 4",
                          tittle5: "info 5"),
                      // child: TextFormField(
                      //   controller: Surveycontroler,
                      //   decoration: InputDecoration(
                      //       hintText: 'Net Metering',
                      //       hintStyle: TextStyle(fontSize: 13),
                      //       isDense: true,
                      //       border: OutlineInputBorder(
                      //           borderRadius: BorderRadius.circular(5)),
                      //       suffixIcon: Icon(Icons.arrow_drop_down_outlined)),
                      //   validator: (value) {
                      //     if (value!.isEmpty) {
                      //       return "Project select contract Price";
                      //     } else {
                      //       return null;
                      //     }
                      //   },
                      // ),
                      // )
                    )
                  ],
                ),
                const SizedBox(
                  width: 25,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "City ",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    SizedBox(
                      height: 30,
                      width: width / 6,
                      child: const singledropdown(
                          hinttext: 'Lincoln',
                          tittle1: "City 1",
                          tittle2: "City 2",
                          tittle3: "City 3",
                          tittle4: "City 4",
                          tittle5: "City 5"),
                      // child: TextFormField(
                      //   controller: Surveycontroler,
                      //   decoration: InputDecoration(
                      //     hintText: 'Lincoln',
                      //     hintStyle: TextStyle(fontSize: 13),
                      //     isDense: true,
                      //     border: OutlineInputBorder(
                      //         borderRadius: BorderRadius.circular(5)),
                      //   ),
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
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Zip Code",
                      style: TextStyle(
                        fontSize: 13,
                      ),
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
                          hintText: '02865',
                          hintStyle: TextStyle(fontSize: 13),
                          isDense: true,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5)),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Please Select a Financing ";
                          } else {
                            return null;
                          }
                        },
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  width: 25,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Phone",
                      style: TextStyle(
                        fontSize: 13,
                      ),
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
                          hintText: '(508) 314-2517',
                          hintStyle: TextStyle(fontSize: 13),
                          isDense: true,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5)),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Please Select a Financing ";
                          } else {
                            return null;
                          }
                        },
                      ),
                    )
                  ],
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Buttons(
                  tittle: "Update Costermer Info",
                  ontap: () {
                    if (_form.currentState!.validate()) {}
                  },
                  width: 150,
                  height: 40,
                  color: Colors.blue),
            ),
          ],
        ),
      ),
    );
  }
}

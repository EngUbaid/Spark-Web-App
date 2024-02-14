import 'package:antd_icons/antd_icons.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:spark/View/drawer%20screen/add_job_data/add_job.dart';
import 'package:spark/View/drawer%20screen/drawre_Screen.dart';
import 'package:spark/common/drawer_textbutton.dart';
import 'package:spark/common/iconchanges.dart';

class TabletDrawer extends StatefulWidget {
  const TabletDrawer({super.key});

  @override
  State<TabletDrawer> createState() => _drwerdataState();
}

class _drwerdataState extends State<TabletDrawer> {
  String selectedDrawerItem = '';

  @override
  Widget build(BuildContext context) {
    // var pro = Provider.of<navigationprovider>(context);
    // var iscollapse = pro.iscolapsed;
    var provider = Provider.of<tableticonchanges>(context);
    var iscollapse = provider.istabletcolapsed;
    // iscollapse = true;
    // iscollapse = true;
    String selectedTab = "Job Grid";

    return Drawer(
      backgroundColor: Colors.white,
      width: iscollapse ? 50 : 220,
      child: Container(
        color: Colors.white,
        padding:
            iscollapse ? EdgeInsets.only(right: 10) : EdgeInsets.only(right: 0),

        // height: MediaQuery.of(context).size.height,
        width: iscollapse ? 50 : 220,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              const SizedBox(
                height: 15,
              ),
              iscollapse
                  ? const Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        'S',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(22, 119, 255, 2),
                        ),
                      ),
                    )
                  : Container(
                      color: Colors.white,
                      padding: const EdgeInsets.only(
                        left: 20,
                        //  top: MediaQuery.of(context).viewPadding.top
                      ),
                      child: const Text(
                        "Spark ",
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.blue,
                            fontWeight: FontWeight.bold),
                      ),
                    ),

              drawerdatas(
                tittle: "Dashboard",
                icon: Icons.dashboard,
                iscolapsed: iscollapse,
                uniquewidetifier: "Dashboard",
                ontap: () {
                  setState(() {});
                },
              ),

              drawerdatas(
                tittle: "Job Grid",
                icon: Icons.dashboard,
                // AntdIcons.outlined.dashboard.svg(
                //   width: 18,
                //   height: 18,
                // ),
                iscolapsed: iscollapse,
                uniquewidetifier: "Job Grid",
                ontap: () {
                  setState(() {});
                },
              ),
              iscollapse
                  ? const ListTile(
                      leading: Icon(Icons.person),
                    )
                  : ExpansionTile(
                      // backgroundColor: Colors.blue,
                      title: const Text(
                        "User Management",
                        style: TextStyle(fontSize: 14),
                      ),
                      leading: const Icon(
                        Icons.person,
                        size: 18,
                        color: Colors.black,
                      ),

                      children: [
                        Container(
                          color: Color.fromRGBO(249, 246, 246, 1),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 40),
                            child: Column(
                              // mainAxisAlignment: MainAxisAlignment.center,
                              // crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                drawerdatas(
                                    tittle: "Users",
                                    icon: Icons.person,
                                    iscolapsed: iscollapse,
                                    uniquewidetifier: "Users",
                                    ontap: () {}),
                                drawerdatas(
                                    tittle: "Roles",
                                    icon: Icons.dashboard,
                                    // AntdIcons.outlined.clear.svg(
                                    //   width: 18,
                                    //   height: 18,
                                    // ),
                                    iscolapsed: iscollapse,
                                    uniquewidetifier: "Roles",
                                    ontap: () {}),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
              drawerdatas(
                  tittle: "Custoemers",
                  icon: Icons.person,
                  // AntdIcons.outlined.clear.svg(
                  //   width: 18,
                  //   height: 18,
                  // ),
                  iscolapsed: iscollapse,
                  uniquewidetifier: "Custoemers",
                  ontap: () {
                    setState(() {});
                  }),
              drawerdatas(
                  tittle: "Job Board",
                  icon: Icons.dashboard,
                  iscolapsed: iscollapse,
                  uniquewidetifier: "Job Board",
                  ontap: () {
                    setState(() {});
                  }),
              drawerdatas(
                tittle: "Job Board Standings",
                icon: Icons.dashboard,
                iscolapsed: iscollapse,
                uniquewidetifier: "Job Board Standings",
                ontap: () {
                  setState(() {});
                },
              ),
              drawerdatas(
                tittle: "Sales Standings",
                icon: Icons.dashboard,
                iscolapsed: iscollapse,
                uniquewidetifier: "Sales Standings",
                ontap: () {
                  setState(() {});
                },
              ),
              iscollapse
                  ? const ListTile(
                      leading: Icon(
                        Icons.currency_pound,
                        size: 18,
                        color: Colors.black,
                      ),
                      // ),
                    )
                  : ExpansionTile(
                      title: const Text(
                        "Financer",
                        style: TextStyle(fontSize: 14),
                      ),
                      leading: const Icon(
                        Icons.currency_pound,
                        size: 18,
                        color: Colors.black,
                      ),
                      children: [
                        Container(
                          color: Color.fromRGBO(249, 246, 246, 1),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 40),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                drawerdatas(
                                  tittle: "Financer Shoots",
                                  icon: Icons.dashboard,
                                  iscolapsed: iscollapse,
                                  uniquewidetifier: "Financer Shoots",
                                  ontap: () {},
                                ),
                                drawerdatas(
                                  tittle: "Financer Apps",
                                  icon: Icons.dashboard,
                                  // AntdIcons.outlined.clear.svg(
                                  //   width: 18,
                                  //   height: 18,
                                  // ),
                                  iscolapsed: iscollapse,
                                  uniquewidetifier: "Financer Apps",
                                  ontap: () {},
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
              drawerdatas(
                tittle: "Install Agreements",
                icon: Icons.dashboard,
                iscolapsed: iscollapse,
                uniquewidetifier: "Install Agreements",
                ontap: () {
                  setState(() {});
                },
              ),
              drawerdatas(
                tittle: "Companies & Teams",
                icon: Icons.dashboard,
                iscolapsed: iscollapse,
                uniquewidetifier: "Companies & Teams",
                ontap: () {
                  setState(() {});
                },
              ),
              drawerdatas(
                tittle: "Auth Logs",
                icon: Icons.dashboard,
                iscolapsed: iscollapse,
                uniquewidetifier: "Auth Logs",
                ontap: () {
                  setState(() {});
                },
              ),
              iscollapse
                  ? const ListTile(
                      leading: Icon(
                        Icons.settings,
                        size: 18,
                        color: Colors.black,
                      ),
                    )
                  : ExpansionTile(
                      title: const Text(
                        "laxonomas",
                        style: TextStyle(fontSize: 14),
                      ),
                      leading: const Icon(
                        Icons.settings,
                        size: 18,
                        color: Colors.black,
                      ),
                      children: [
                        Container(
                          color: Color.fromRGBO(249, 246, 246, 1),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 40),
                            child: Column(
                              children: [
                                drawerdatas(
                                  tittle: "Load Sources",
                                  icon: Icons.dashboard,
                                  iscolapsed: iscollapse,
                                  uniquewidetifier: "Load Sources",
                                  ontap: () {
                                    setState(() {});
                                  },
                                ),
                                drawerdatas(
                                  tittle: "Utility Companies",
                                  icon: Icons.dashboard,
                                  iscolapsed: iscollapse,
                                  uniquewidetifier: "Utility Companies",
                                  ontap: () {
                                    setState(() {});
                                  },
                                ),
                                drawerdatas(
                                  tittle: "Doal Types",
                                  icon: Icons.dashboard,
                                  iscolapsed: iscollapse,
                                  uniquewidetifier: "Doal Types",
                                  ontap: () {
                                    setState(() {});
                                  },
                                ),
                                drawerdatas(
                                  tittle: "Financing",
                                  icon: Icons.dashboard,
                                  iscolapsed: iscollapse,
                                  uniquewidetifier: "Financing",
                                  ontap: () {
                                    setState(() {});
                                  },
                                ),
                                drawerdatas(
                                  tittle: "Root Type",
                                  icon: Icons.dashboard,
                                  iscolapsed: iscollapse,
                                  uniquewidetifier: "Root Type",
                                  ontap: () {
                                    setState(() {});
                                  },
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),

              drawerdatas(
                tittle: "All activity log",
                icon: Icons.dashboard,
                iscolapsed: iscollapse,
                uniquewidetifier: "All activity log",
                ontap: () {
                  setState(() {});
                },
              ),

              //  Spacer(),

              iconfuntion(context, iscollapse),

              const SizedBox(
                height: 16,
              )
            ],
          ),
        ),
      ),
    );
  }

  iconfuntion(BuildContext context, bool iscolpe) {
    double size = 52;
    final icon = iscolpe ? Icons.arrow_forward_ios : Icons.arrow_back_ios;
    return InkWell(
        onTap: () {
          // var provider =
          //     Provider.of<navigationprovider>(context, listen: false);
          // provider.changescolapse();
          var provider = Provider.of<tableticonchanges>(context, listen: false);
          provider.tabletchangescolapse();
        },
        child: Container(
          padding:
              iscolpe ? EdgeInsets.only(left: 13) : EdgeInsets.only(left: 0),
          width: size,
          height: size,
          child: Icon(
            icon,
          ),
        ));
  }

  drawerdatas(
      {required String tittle,
      required IconData icon,
      required bool iscolapsed,
      required String uniquewidetifier,
      required VoidCallback ontap}) {
    bool isSelected = selectedDrawerItem == uniquewidetifier;
    Color iconColor = isSelected ? Colors.blue : Colors.black;

    if (iscolapsed) {
      return ListTile(
        selected: isSelected,
        // onTap: ontap,
        onTap: () {
          selectedDrawerItem = uniquewidetifier;
          ontap();
        },
        leading: Icon(
          icon,
          color: iconColor,
          size: 18,
        ),
      );
    } else {
      return Stack(
        children: [
          Container(
            color: isSelected ? Color.fromRGBO(230, 247, 255, 1) : Colors.white,
            child: ListTile(
              selected: isSelected,

              // onTap: ontap,
              onTap: () {
                setState(() {
                  selectedDrawerItem = uniquewidetifier;
                });
                ontap();
              },

              leading: Icon(
                icon,
                color: iconColor,
                size: 18,
              ),

              title: Text(
                tittle,
                style: TextStyle(
                  fontSize: 14,
                  color: isSelected ? Colors.blue : Colors.black,
                ),
              ),
              // Change color on tap
            ),
          ),
          Positioned(
              right: 0,
              child: Container(
                  height: 50,
                  width: 3,
                  color: isSelected
                      ? Color.fromRGBO(24, 144, 255, 1)
                      : Colors.white))
        ],
      );
    }
  }
}

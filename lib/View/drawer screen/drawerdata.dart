import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';
import 'package:spark/View/Drawer_All_Screens/All_activity_log_Screen/All_activity_og.dart';
import 'package:spark/View/Drawer_All_Screens/Auth%20Logs_Screen/AuthLogs.dart';
import 'package:spark/View/Drawer_All_Screens/Companies%20&%20Teams_Screen/Companies&Teams.dart';
import 'package:spark/View/Drawer_All_Screens/Customers_Screen/Customers.dart';
import 'package:spark/View/Drawer_All_Screens/Dashboard_Screen/DashboardScreen.dart';
import 'package:spark/View/Drawer_All_Screens/Financer_Screen/Financer.dart';
import 'package:spark/View/Drawer_All_Screens/Install%20Agreements_Screen/InstallAgreements.dart';
import 'package:spark/View/Drawer_All_Screens/Job%20Board%20Standings_Screen/Job%20Board%20Standings.dart';
import 'package:spark/View/Drawer_All_Screens/Job_Grid_screen/Job_Grid_screen.dart';
import 'package:spark/View/Drawer_All_Screens/Sales%20Standings_Screen/SalesStandings.dart';
import 'package:spark/View/Drawer_All_Screens/User_Managment_Screen/User_Managemnt.dart';
import 'package:spark/View/Drawer_All_Screens/laxonomas_Screen/laxonomas.dart';
import 'package:spark/View/drawer%20screen/drawre_Screen.dart';
import 'package:spark/assetss/App_Colors.dart';
import 'package:spark/common/iconchanges.dart';

class drwerdata extends StatefulWidget {
  final String firstname;
  final String lastname;
  final String role;
  final String profilephoto;
  final String accestoken;
  const drwerdata(
      {super.key,
      required this.firstname,
      required this.lastname,
      required this.role,
      required this.profilephoto,
      required this.accestoken,
      });

  @override
  State<drwerdata> createState() => _drwerdataState();
}

class _drwerdataState extends State<drwerdata> {
  String selectedDrawerItem = 'Job Board';

  @override
  Widget build(BuildContext context) {
    var pro = Provider.of<navigationprovider>(context);
    var iscollapse = pro.iscolapsed;
    String selectedScreen = "";

    return Scaffold(
      body: Row(
        children: [
          Container(
            alignment: Alignment.topLeft,
            width: iscollapse ? 70 : 200,
            color: Colors.white,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  const SizedBox(
                    height: 15,
                  ),
                  iscollapse
                      ? const Padding(
                          padding: EdgeInsets.only(left: 18),
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
                            "Spark",
                            style: TextStyle(
                                fontSize: 25,
                                color: bluecolor,
                                fontWeight: FontWeight.bold),
                          ),
                        ),

                  drawerListtile(
                    tittle: "Dashboard",
                    icon: Icons.dashboard,
                    iscolapsed: iscollapse,
                    uniquewidetifier: "Dashboard",
                    ontap: () {
                      setState(() {
                        selectedDrawerItem = "Dashboard";
                      });
                    },
                  ),

                  drawerListtile(
                    tittle: "Job Grid",
                    icon: Icons.dashboard,
                    iscolapsed: iscollapse,
                    uniquewidetifier: "Job Grid",
                    ontap: () {
                      setState(() {
                        selectedScreen = "Job Grid";
                      });
                    },
                  ),
                  iscollapse
                      ? const ListTile(
                          leading: SizedBox(
                              height: 20, width: 20, child: Icon(Icons.person)),
                        )
                      : ExpansionTile(
                          collapsedBackgroundColor: Colors.white,
                          backgroundColor: Color.fromRGBO(230, 247, 255, 1),
                          title: const Text(
                            "User Management",
                            style: TextStyle(fontSize: 14),
                          ),
                          leading: const SizedBox(
                            height: 20,
                            width: 20,
                            child: Icon(
                              Icons.person,
                              // size: 18,
                              color: Colors.black,
                            ),
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
                                    drawerListtile(
                                        tittle: "Users",
                                        icon: Icons.person,
                                        iscolapsed: iscollapse,
                                        uniquewidetifier: "Users",
                                        ontap: () {}),
                                    drawerListtile(
                                        tittle: "Roles",
                                        icon: Icons.dashboard,
                                        iscolapsed: iscollapse,
                                        uniquewidetifier: "Roles",
                                        ontap: () {}),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                  drawerListtile(
                      tittle: "Customers",
                      icon: Icons.person,
                      iscolapsed: iscollapse,
                      uniquewidetifier: "Customers",
                      ontap: () {
                        setState(() {
                          selectedScreen = "Customers";
                        });
                      }),
                  drawerListtile(
                      tittle: "Job Board",
                      icon: Icons.dashboard,
                      iscolapsed: iscollapse,
                      uniquewidetifier: "Job Board",
                      ontap: () {
                        setState(() {
                          selectedScreen = "Job Board";
                        });
                      }),
                  drawerListtile(
                    tittle: "Job Board Standings",
                    icon: Icons.dashboard,
                    // AntdIcons.outlined.clear.svg(
                    //   width: 18,
                    //   height: 18,
                    // ),
                    iscolapsed: iscollapse,
                    uniquewidetifier: "Job Board Standings",
                    ontap: () {
                      setState(() {
                        setState(() {
                          selectedScreen = "Job Board Standings";
                        });
                      });
                    },
                  ),
                  drawerListtile(
                    tittle: "Sales Standings",
                    icon: Icons.dashboard,
                    // AntdIcons.outlined.clear.svg(
                    //   width: 18,
                    //   height: 18,
                    // ),
                    iscolapsed: iscollapse,
                    uniquewidetifier: "Sales Standings",
                    ontap: () {
                      setState(() {
                        selectedScreen = "Sales Standings";
                      });
                    },
                  ),
                  iscollapse
                      ? const ListTile(
                          leading: SizedBox(
                            // height: 15,
                            // width: 15,
                            child: Icon(
                              Icons.currency_pound,
                              // size: 18,
                              color: Colors.black,
                            ),
                          ),
                          // ),
                        )
                      : ExpansionTile(
                          collapsedBackgroundColor: Colors.white,
                          backgroundColor: Color.fromRGBO(230, 247, 255, 1),
                          title: const Text(
                            "Financer",
                            style: TextStyle(fontSize: 14),
                          ),
                          leading: const SizedBox(
                            // height: 15,
                            // width: 15,
                            child: Icon(
                              Icons.currency_pound,
                              //  size: 18,
                              color: Colors.black,
                            ),
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
                                    drawerListtile(
                                      tittle: "Financer Shoots",
                                      icon: Icons.dashboard,
                                      iscolapsed: iscollapse,
                                      uniquewidetifier: "Financer Shoots",
                                      ontap: () {},
                                    ),
                                    drawerListtile(
                                      tittle: "Financer Apps",
                                      icon: Icons.dashboard,
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
                  drawerListtile(
                    tittle: "Install Agreements",
                    icon: Icons.dashboard,
                    iscolapsed: iscollapse,
                    uniquewidetifier: "Install Agreements",
                    ontap: () {
                      setState(() {
                        selectedScreen = "Install Agreements";
                      });
                    },
                  ),
                  drawerListtile(
                    tittle: "Companies & Teams",
                    icon: Icons.dashboard,
                    // AntdIcons.outlined.clear.svg(
                    //   width: 18,
                    //   height: 18,
                    // ),
                    iscolapsed: iscollapse,
                    uniquewidetifier: "Companies & Teams",
                    ontap: () {
                      setState(() {
                        selectedScreen = "Companies & Teams";
                      });
                    },
                  ),
                  drawerListtile(
                    tittle: "Auth Logs",
                    icon: Icons.dashboard,
                    iscolapsed: iscollapse,
                    uniquewidetifier: "Auth Logs",
                    ontap: () {
                      setState(() {
                        selectedScreen = "Auth Logs";
                      });
                    },
                  ),
                  iscollapse
                      ? const ListTile(
                          leading: SizedBox(
                            height: 15,
                            width: 15,
                            child: Icon(
                              Icons.settings,
                              // size: 18,
                              color: Colors.black,
                            ),
                          ),
                        )
                      : ExpansionTile(
                          collapsedBackgroundColor: Colors.white,
                          backgroundColor: Color.fromRGBO(230, 247, 255, 1),
                          title: const Text(
                            "laxonomas",
                            style: TextStyle(fontSize: 14),
                          ),
                          leading: const SizedBox(
                            height: 15,
                            width: 15,
                            child: Icon(
                              Icons.settings,
                              //   size: 18,
                              color: Colors.black,
                            ),
                          ),
                          // AntdIcons.outlined.setting.svg(
                          //   width: 18,
                          //   height: 18,
                          // ),
                          children: [
                            Container(
                              color: Color.fromRGBO(249, 246, 246, 1),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 40),
                                child: Column(
                                  children: [
                                    drawerListtile(
                                      tittle: "Load Sources",
                                      icon: Icons.dashboard,
                                      // AntdIcons.outlined.clear.svg(
                                      //   width: 18,
                                      //   height: 18,
                                      // ),
                                      iscolapsed: iscollapse,
                                      uniquewidetifier: "Load Sources",
                                      ontap: () {},
                                    ),
                                    drawerListtile(
                                      tittle: "Utility Companies",
                                      icon: Icons.dashboard,
                                      // AntdIcons.outlined.clear.svg(
                                      //   width: 18,
                                      //   height: 18,
                                      // ),
                                      iscolapsed: iscollapse,
                                      uniquewidetifier: "Utility Companies",
                                      ontap: () {},
                                    ),
                                    drawerListtile(
                                      tittle: "Doal Types",
                                      icon: Icons.dashboard,
                                      // AntdIcons.outlined.clear.svg(
                                      //   width: 18,
                                      //   height: 18,
                                      // ),
                                      iscolapsed: iscollapse,
                                      uniquewidetifier: "Doal Types",
                                      ontap: () {},
                                    ),
                                    drawerListtile(
                                      tittle: "Financing",
                                      icon: Icons.dashboard,
                                      // AntdIcons.outlined.clear.svg(
                                      //   width: 18,
                                      //   height: 18,
                                      // ),
                                      iscolapsed: iscollapse,
                                      uniquewidetifier: "Financing",
                                      ontap: () {},
                                    ),
                                    drawerListtile(
                                      tittle: "Root Type",
                                      icon: Icons.dashboard,
                                      // AntdIcons.outlined.clear.svg(
                                      //   width: 18,
                                      //   height: 18,
                                      // ),
                                      iscolapsed: iscollapse,
                                      uniquewidetifier: "Root Type",
                                      ontap: () {},
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),

                  drawerListtile(
                    tittle: "All activity log",
                    icon: Icons.dashboard,
                    iscolapsed: iscollapse,
                    uniquewidetifier: "All activity log",
                    ontap: () {
                      setState(() {
                        selectedScreen = "All activity log";
                      });
                    },
                  ),

                  //Spacer(flex: 1,),
                  //SizedBox(height: 100,),

                  Align(
                      alignment: Alignment.bottomCenter,
                      child: iconFunction(context, iscollapse)),

                  const SizedBox(
                    height: 16,
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              // padding: EdgeInsets.all(0.0),
              child: getSelectedScreen(selectedDrawerItem),
            ),
          ),
        ],
      ),
    );
    // });
  }

  Widget getSelectedScreen(String selectedScreen) {
    if (selectedScreen == "Job Board") {
      return DrwerScreen(
        firstname: widget.firstname,
        lastname: widget.lastname,
        role: widget.role,
        profilephoto: widget.profilephoto,
        accestoken: widget.accestoken,
        
      );
    } else if (selectedScreen == "Job Grid") {
      return JobGridScreen();
    } else if (selectedScreen == "Dashboard") {
      return DashboardScreen();
    } else if (selectedScreen == "User Management") {
      return UserMAnagementScreen();
    } else if (selectedScreen == "Customers") {
      return CostemersScreen();
    } else if (selectedScreen == "Job Board Standings") {
      return JobBoardStandingsScreen();
    } else if (selectedScreen == "Sales Standings") {
      return SalesStandingsScreen();
    } else if (selectedScreen == "Financer") {
      return FinancierScreen();
    } else if (selectedScreen == "Install Agreements") {
      return InstallAgreementsScreen();
    } else if (selectedScreen == "Companies & Teams") {
      return CompaniesANdTeamsScreen();
    } else if (selectedScreen == "Auth Logs") {
      return AuthLogScreen();
    } else if (selectedScreen == "laxonomas") {
      return LaxonomasScreen();
    } else if (selectedScreen == "All activity log") {
      return AllActivityLogScreen();
    } else {
      // Return a default screen or handle other cases
      //return DrwerScreen();
    }
    return Container(
      color: Colors.black,
    ); // Placeholder, replace with your implementation
  }

  Widget iconFunction(BuildContext context, bool isCollapse) {
    double size = 52;
    final icon = isCollapse ? Icons.arrow_forward_ios : Icons.arrow_back_ios;
    final width = isCollapse ? double.infinity : size;
    double widthscren = MediaQuery.of(context).size.width;

    return Builder(
      builder: (context) {
        return GestureDetector(
          onTap: () {
            var provider =
                Provider.of<navigationprovider>(context, listen: false);
            provider.changescolapse();
          },
          child: Container(
            margin: EdgeInsets.only(right: 20, left: 10),
            width: width,
            height: size,
            child: Icon(
              icon,
            ),
          ),
        );
      },
    );
  }

  drawerListtile(
      {required String tittle,
      required IconData icon,
      required bool iscolapsed,
      required String uniquewidetifier,
      required VoidCallback ontap}) {
    bool isSelected = selectedDrawerItem == uniquewidetifier;
    Color iconColor = isSelected ? bluecolor : Colors.black;

    if (iscolapsed) {
      return ListTile(
        selected: isSelected,
        onTap: () {
          selectedDrawerItem = uniquewidetifier;
          ontap();
        },
        leading: SizedBox(
          width: 25,
          height: 25,
          child: Icon(
            icon,
            color: iconColor,
            size: 15,
          ),
        ),
      );
    } else {
      return Stack(
        children: [
          Container(
            color: isSelected ? Color.fromRGBO(230, 247, 255, 1) : Colors.white,
            child: ListTile(
              selected: isSelected,

              onTap: () {
                setState(() {
                  selectedDrawerItem = uniquewidetifier;
                });
                ontap();
              },

              leading: SizedBox(
                width: 25,
                height: 25,
                child: Icon(
                  icon,
                  color: iconColor,
                  size: 15,
                ),
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

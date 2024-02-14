import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:spark/common/iconchanges.dart';

class drwerdata extends StatefulWidget {
  const drwerdata({super.key});

  @override
  State<drwerdata> createState() => _drwerdataState();
}

class _drwerdataState extends State<drwerdata> {
  String selectedDrawerItem = '';
  @override
  Widget build(BuildContext context) {
    var pro = Provider.of<navigationprovider>(context);
    final iscollapse = pro.iscolapsed;

    return Drawer(
      backgroundColor: Colors.white,
      width: iscollapse ? 50 : 220,
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Material(
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
                        "Spark",
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.blue,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
              
              drawerListtile(
                tittle: "Dashboard",
                icon: Icons.dashboard,
                iscolapsed: iscollapse,
                uniquewidetifier: "Dashboard",
                ontap: () {
                  setState(() {});
                },
              ),
              
              drawerListtile(
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
                  ? ListTile(
                      leading: SizedBox(
                          height: 15, width: 15, child: Icon(Icons.person)),
                      // leading: AntdIcons.outlined.oneToOne.svg(
                      //   width: 18,
                      //   height: 18,
                      // ),
                    )
                  : ExpansionTile(
                      collapsedBackgroundColor: Colors.white,
                      backgroundColor: Color.fromRGBO(230, 247, 255, 1),
                      title: const Text(
                        "User Management",
                        style: TextStyle(fontSize: 14),
                      ),
                      leading: SizedBox(
                        height: 15,
                        width: 15,
                        child: const Icon(
                          Icons.person,
                          // size: 18,
                          color: Colors.black,
                        ),
                      ),
                      // AntdIcons.twoTone.profile.svg(
                      //   width: 18,
                      //   height: 18,
              
                      // ),
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
              drawerListtile(
                  tittle: "Customers",
                  icon: Icons.person,
                  iscolapsed: iscollapse,
                  uniquewidetifier: "Customers",
                  ontap: () {
                    setState(() {});
                  }),
              drawerListtile(
                  tittle: "Job Board",
                  icon: Icons.dashboard,
                  iscolapsed: iscollapse,
                  uniquewidetifier: "Job Board",
                  ontap: () {
                    setState(() {});
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
                  setState(() {});
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
                  setState(() {});
                },
              ),
              iscollapse
                  ? const ListTile(
                      leading: SizedBox(
                        height: 15,
                        width: 15,
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
                        height: 15,
                        width: 15,
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
                  setState(() {});
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
                  setState(() {});
                },
              ),
              drawerListtile(
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
                  setState(() {});
                },
              ),
              
              // Spacer(),
              
              iconFunction(context, iscollapse),
              
              const SizedBox(
                height: 16,
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget iconFunction(BuildContext context, bool isCollapse) {
    double size = 52;
    final icon = isCollapse ? Icons.arrow_forward_ios : Icons.arrow_back_ios;

    return Builder(
      builder: (context) {
        return GestureDetector(
          onTap: () {
            var provider =
                Provider.of<navigationprovider>(context, listen: false);
            provider.changescolapse();
          },
          child: Align(
            alignment: isCollapse ? Alignment.center : Alignment.center,
            child: Container(
              width: size,
              height: size,
              child: Icon(
                icon,
              ),
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
    Color iconColor = isSelected ? Colors.blue : Colors.black;

    if (iscolapsed) {
      return ListTile(
        selected: isSelected,
        onTap: () {
          selectedDrawerItem = uniquewidetifier;
          ontap();
        },
        leading: SizedBox(
          width: 15,
          height: 15,
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
                width: 15,
                height: 15,
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

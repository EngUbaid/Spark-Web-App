import 'package:antd_icons/antd_icons.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:spark/View/drawer%20screen/Hide_show_buttons/Hide_show.dart';
import 'package:spark/View/drawer%20screen/Job_Board_data/jobboard.dart';
import 'package:spark/View/drawer%20screen/SettingDrawrdata/settingdrawerdarta.dart';
import 'package:spark/View/drawer%20screen/Top_bar/topbar.dart';
import 'package:spark/assetss/App_Colors.dart';
import 'package:spark/common/iconchanges.dart';
import 'package:spark/raw.dart';

class DrwerScreen extends StatefulWidget {
  final String firstname;
  final String lastname;
  final String role;
  final String profilephoto;
  final String accestoken;
  const DrwerScreen(
      {super.key,
      required this.firstname,
      required this.lastname,
      required this.role,
      required this.profilephoto,
      required this.accestoken});

  @override
  State<DrwerScreen> createState() => _DrwerScreenState();
}

class _DrwerScreenState extends State<DrwerScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<navigationprovider>(context);
    var isCollapsed = provider.iscolapsed;
    var screenwidth = MediaQuery.of(context).size.width;

    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        toolbarHeight: 0,
      ),
      backgroundColor: backroundcolor,
      //  backgroundColor: Color.fromARGB(240, 230, 247, 255),

      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // App bar Container
            TopAppbar(
              firstname: widget.firstname,
              lastname: widget.lastname,
              role: widget.role,
              profilephoto: widget.profilephoto,
              aceestoken: widget.accestoken,
            ),
            const SizedBox(
              height: 10,
            ),

            screenwidth >= 1600
                ? const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Jobboard(),
                      hideshodata(),
                    ],
                  )
                : const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Jobboard(),
                      SizedBox(
                        height: 10,
                      ),
                      hideshodata(),
                      SizedBox(
                        height: 5,
                      ),
                    ],
                  ),

            Kanbanboardmaker()
          ],
        ),
      ),
      //   ],
      // ),
      // endDrawer: Stack(
      //   children: [
      //     Container(
      //       // color: Colors.white,
      //      // decoration: BoxDecoration(color: Colors.white),
      //         color: Colors.white,
      //       width: 350,
      //       // height: MediaQuery.of(context).size.height - 10,
      //       child: Settingdrawerdat(),
      //     ),

      //   ],
      // ),
      endDrawer: Settingdrawerdat(),
      floatingActionButton: Align(
        alignment: Alignment.centerRight,
        child: FloatingActionButton(
          backgroundColor: bluecolor,
          onPressed: () {
            _scaffoldKey.currentState?.openEndDrawer();
          },
          child: AntdIcons.outlined.setting
              .svg(height: 20, width: 20, color: Colors.white),
        ),
      ),

      // floatingActionButton: Stack(
      //   children: [
      //     Positioned(
      //       top: MediaQuery.of(context).size.height / 2,
      //       right: -10,
      //       child: FloatingActionButton(
      //         backgroundColor: Colors.blue,
      //         onPressed: () {
      //           _scaffoldKey.currentState?.openEndDrawer();
      //         },
      //         child: AntdIcons.outlined.setting
      //             .svg(height: 20, width: 20, color: Colors.white),
      //       ),
      //     ),
      //   ],
      // ),
    );
  }
}

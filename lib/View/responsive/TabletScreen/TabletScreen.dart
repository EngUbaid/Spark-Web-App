import 'package:antd_icons/antd_icons.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:spark/View/drawer%20screen/Hide_show_buttons/Hide_show.dart';
import 'package:spark/View/drawer%20screen/Job_Board_data/jobboard.dart';
import 'package:spark/View/drawer%20screen/Kanbanboards/Tablet_Kanbanboard/tablet_kanbanboard.dart';
import 'package:spark/View/drawer%20screen/SettingDrawrdata/settingdrawerdarta.dart';
import 'package:spark/View/drawer%20screen/Top_bar/topbar.dart';
import 'package:spark/View/drawer%20screen/drawerdata.dart';
import 'package:spark/View/responsive/TabletScreen/Tablet_Drawer.dart';
import 'package:spark/common/iconchanges.dart';

class TabletScreen extends StatefulWidget {
  const TabletScreen({super.key});

  @override
  State<TabletScreen> createState() => _DrwerScreenState();
}

class _DrwerScreenState extends State<TabletScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    // var provider = Provider.of<navigationprovider>(context);
    // var isCollapsed = provider.iscolapsed ;
    var provider = Provider.of<tableticonchanges>(context);
    var isCollapsed = provider.istabletcolapsed;
    // isCollapsed = true;
    // isCollapsed = true;

    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        toolbarHeight: 0,
      ),
      backgroundColor: Color.fromRGBO(238, 238, 223, 1),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // Animated Container
          const SizedBox(
            height: 10,
          ),
          // TabletDrawer(),
          AnimatedContainer(
            duration: Duration(milliseconds: 300),
            // width: isCollapsed  ? 40 : 180,
            width: isCollapsed ? 50 : 220,
            child: const TabletDrawer(),
          ),
          const SizedBox(
            width: 10,
          ),

          const Expanded(
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // App bar Container
                  TopAppbar(),
                  SizedBox(
                    height: 10,
                  ),
                  Jobboard(),
                  SizedBox(
                    height: 10,
                  ),
                  hideshodata(),

                  TabletKanbanboard()
                ],
              ),
            ),
          ),
        ],
      ),
      endDrawer: const Stack(
        children: [
          Drawer(
            width: 350,
            child: Settingdrawerdat(),
          ),
        ],
      ),
      floatingActionButton: Stack(
        children: [
          Positioned(
            top: MediaQuery.of(context).size.height / 2,
            right: -10,
            child: FloatingActionButton(
              backgroundColor: Colors.blue,
              onPressed: () {
                _scaffoldKey.currentState?.openEndDrawer();
              },
              child: AntdIcons.outlined.setting
                  .svg(height: 20, width: 20, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}

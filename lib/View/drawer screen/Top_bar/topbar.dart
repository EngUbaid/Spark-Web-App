import 'package:antd_icons/antd_icons.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
class TopAppbar extends StatelessWidget {
  const TopAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 60,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: Row(
        children: [
          const SizedBox(
            width: 20,
          ),
          Tooltip(
            message: "Settings",
            child: AntdIcons.outlined.setting.svg(
              width: 18,
              height: 18,
            ),
          ),

          const SizedBox(
            width: 20,
          ),
          Container(
              height: 22,
              child: const VerticalDivider(
                color: Colors.grey,
                thickness: 0.2,
                width: 0.3,
              )),
          const SizedBox(
            width: 20,
          ),
          Tooltip(
            message: "Activity log",
            child: AntdIcons.outlined.unorderedList.svg( width: 18,
               height: 18,),
          ),
          // Tooltip(
          //   message: "Activity log",
          //   // child: SvgPicture.asset(
          //   //   "Icons/Activity log.svg",
          //   //   width: 18,
          //   //   height: 18,
          //   // ),
          // ),
          const SizedBox(
            width: 20,
          ),
          Container(
              height: 22,
              child: const VerticalDivider(
                color: Colors.grey,
                thickness: 0.2,
                width: 0.3,
              )),
          const SizedBox(
            width: 20,
          ),
          Tooltip(
            message: "Clear Cache",
            child: AntdIcons.outlined.clear.svg(
              width: 18,
              height: 18,
            ),
          ),

          const SizedBox(
            width: 20,
          ),
          Container(
              height: 22,
              child: const VerticalDivider(
                color: Colors.grey,
                thickness: 0.2,
                width: 0.3,
              )),
          const SizedBox(
            width: 20,
          ),
          Tooltip(
            message: "Profile",
            child: AntdIcons.outlined.user.svg(height: 18, width: 18)),

          const SizedBox(
            width: 20,
          ),
          Container(
              height: 22,
              child: const VerticalDivider(
                color: Colors.grey,
                thickness: 0.1,
                width: 0.3,
              )),
          const SizedBox(
            width: 20,
          ),
          Tooltip(
            message: "Log Out",
            child: AntdIcons.outlined.logout.svg(
              width: 18,
              height: 18,
            ),
          ),

          Expanded(
            child: Padding(
              padding:  EdgeInsets.only(right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                badges.Badge(
                  badgeContent: Text("10"),
                  child: AntdIcons.outlined.bell.svg(height: 30,width: 30),
                  badgeStyle: badges.BadgeStyle(
                    shape: badges.BadgeShape.square,
                    borderRadius: BorderRadius.circular(20)
                  ),
                ),
                  // Container(
                     
                  //     child: AntdIcons.outlined.bell.svg(height: 30,width: 30),
                  //     ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Super Admin",
                        style: TextStyle(
                            fontSize: 13, fontWeight: FontWeight.w600),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 35),
                        child: Text(
                          "Admin",
                          style: TextStyle(fontSize: 13),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  CircleAvatar(
                    backgroundColor: Color.fromRGBO(202, 202, 200, 0.8),
                  child: AntdIcons.outlined.user.svg(height: 18,width: 18),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

import 'dart:convert';
import 'package:antd_icons/antd_icons.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:http/http.dart';
import 'package:spark/View/Log_in_Screen/login_screen.dart';
import 'package:spark/assetss/App_Colors.dart';

class TopAppbar extends StatefulWidget {
  final String firstname;
  final String lastname;
  final String role;
  final String profilephoto;
  final String aceestoken;

  const TopAppbar({
    super.key,
    required this.firstname,
    required this.lastname,
    required this.role,
    required this.profilephoto,
    required this.aceestoken,
  });

  @override
  State<TopAppbar> createState() => _TopAppbarState();
}

class _TopAppbarState extends State<TopAppbar> {
  @override
  Widget build(BuildContext context) {
    var screenwidth = MediaQuery.of(context).size.width;

    Future<void> logout() async {
      try {
        final response = await post(
          Uri.parse('https://staging.sparkemp.io/api/logout'),
          headers: {
            'Authorization': 'Bearer  ${widget.aceestoken}',
          },
        );
        print("Response is ${response.statusCode}");
        print("Access token is ${widget.aceestoken}");
        if (response.statusCode == 200) {
          var data = jsonDecode(response.body.toString());
          Navigator.pushReplacement(context, MaterialPageRoute(
            builder: (context) {
              return Loginscreen();
            },
          ));
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
              backgroundColor: greencolor, content: Text('Log in succesfuly')));
        } else {
          final responseData = jsonDecode(response.body);
          if (responseData['success'] == false) {
            final errors = responseData['errors'];
            if (errors != null && errors.isNotEmpty) {
              final errorMessage = errors[0];
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  backgroundColor: redcolor, content: Text(errorMessage)));
            } else {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  backgroundColor: redcolor, content: Text('Unknown error')));
            }
          }
        }
      } catch (e) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            backgroundColor: redcolor,
            content: Text('Logout failed: ${e.toString()}')));
      }
    }

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
            child: AntdIcons.outlined.unorderedList.svg(
              width: 18,
              height: 18,
            ),
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
          GestureDetector(
            onTap: () {
              logout();
            },
            child: Tooltip(
              message: "Log Out",
              child: AntdIcons.outlined.logout.svg(
                width: 18,
                height: 18,
              ),
            ),
          ),

          screenwidth <= 700
              ? Container()
              : Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        badges.Badge(
                          badgeContent: Text("10"),
                          child: AntdIcons.outlined.bell
                              .svg(height: 30, width: 30),
                          badgeStyle: badges.BadgeStyle(
                              shape: badges.BadgeShape.square,
                              borderRadius: BorderRadius.circular(20)),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Text(
                          "${widget.firstname} ${widget.lastname}  \n ${widget.role}",
                          style: const TextStyle(
                              fontSize: 13, fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        CircleAvatar(
                          backgroundColor: profilebackround,
                          // backgroundImage: NetworkImage(
                          //     "https://images.unsplash.com/photo-1511367461989-f85a21fda167?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cHJvZmlsZXxlbnwwfHwwfHx8MA%3D%3D"),
                          backgroundImage: NetworkImage(widget.profilephoto),
                          //child: Image.network("https://images.unsplash.com/photo-1511367461989-f85a21fda167?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cHJvZmlsZXxlbnwwfHwwfHx8MA%3D%3D",fit: BoxFit.fill,),
                          // child: AntdIcons.outlined.user
                          //     .svg(height: 18, width: 18),
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

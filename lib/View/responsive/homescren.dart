import 'package:flutter/material.dart';
import 'package:spark/View/drawer%20screen/drawre_Screen.dart';
import 'package:spark/View/responsive/MobileScreen/LongSystem.dart';
import 'package:spark/View/responsive/TabletScreen/TabletScreen.dart';
import 'package:spark/View/responsive/responsive.dart';


class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    // Size mediaquery = MediaQuery.of(context).size;
    return Scaffold(
      body: Responsive(
        desktop: DrwerScreen(),
        tablet:  TabletScreen(),
        lognsystem:  LongSystem(),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final Widget desktop;
  final Widget tablet;
  final Widget lognsystem;
  const Responsive(
      {super.key,
      required this.desktop,
      required this.tablet,
      required this.lognsystem});
  //tablet width control
  static bool istablet(BuildContext context) =>
      MediaQuery.of(context).size.width < 1200 &&
      MediaQuery.of(context).size.width >= 550;
// Desktop Width cotrol
  static bool isdesktop(BuildContext context) =>
      MediaQuery.of(context).size.width < 1600 &&
      MediaQuery.of(context).size.width >= 1200;

  static bool islongscreensystem(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1400;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth >= 1600) {
          return lognsystem;
        } else if (constraints.maxWidth > 1200) {
          return desktop;
        } else if (constraints.maxWidth >= 550) {
          return tablet;
        }
        return Container(
          color: Colors.black,
          child:const Center(child: Text(
            "Sorry  This is not Mobile Application  \n This is only For Tablet and Desktop ",style: TextStyle(color: Colors.white),)),
        );
      
      },
    );
  }
}

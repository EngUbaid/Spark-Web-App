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
      MediaQuery.of(context).size.width < 1240 &&
      MediaQuery.of(context).size.width >= 600;
// Desktop Width cotrol
  static bool isdesktop(BuildContext context) =>
      MediaQuery.of(context).size.width < 1400 &&
      MediaQuery.of(context).size.width >= 1240;

  static bool islongscreensystem(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1400;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth >= 1400) {
          return lognsystem;
        } else if (constraints.maxWidth > 1240) {
          return desktop;
        } else if (constraints.maxWidth >= 600) {
          return tablet;
        }
        return Container();
        //   if (constraints.maxWidth >= 1100) {
        //     return desktop;
        //   } else if (constraints.maxWidth >= 600) {
        //     return tablet;
        //   }
        //   return Lognsystem;
      },
    );
  }
}

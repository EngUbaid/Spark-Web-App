import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:spark/View/drawer%20screen/drawerdata.dart';
import 'package:spark/common/iconchanges.dart';

class animatedcontainerclass extends StatefulWidget {
  const animatedcontainerclass({super.key});

  @override
  State<animatedcontainerclass> createState() => _animatedcontainerclassState();
}

class _animatedcontainerclassState extends State<animatedcontainerclass> {
  
  @override
  Widget build(BuildContext context) {
        var provider = Provider.of<navigationprovider>(context);
    var isCollapsed = provider.iscolapsed;
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      width: isCollapsed ? 60 : 220,
     // child: const drwerdata(),
    );
  }
}

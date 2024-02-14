import 'package:flutter/material.dart';

class Drawercommon extends StatefulWidget {
  final String tittle;
  final IconData icon;
  final bool iscolapsed;
  final VoidCallback ontap;
  final bool isSelected;
  const Drawercommon(
      {super.key,
     
      required this.tittle,
      required this.icon,
      required this.iscolapsed,
      required this.ontap,
      this.isSelected = false});

  @override
  State<Drawercommon> createState() => _DrawercommonState();
}

class _DrawercommonState extends State<Drawercommon> {
  @override
  Widget build(BuildContext context) {
    Color iconColor = widget.isSelected ? Colors.blue : Colors.black;
    return widget.iscolapsed
        ? ListTile(
            selected: widget.isSelected,
            onTap: widget.ontap,
            leading: Icon(
              widget.icon,
              color: iconColor,
              size: 18,
            ),
          )
        : Stack(
            children: [
              Container(
                color: widget.isSelected
                    ? Color.fromRGBO(230, 247, 255, 1)
                    : Colors.white,
                child: ListTile(
                  selected: widget.isSelected,

                  onTap: widget.ontap,

                  leading: Icon(
                    widget.icon,
                    color: iconColor,
                    size: 18,
                  ),

                  title: Text(
                    widget.tittle,
                    style: TextStyle(
                      fontSize: 14,
                      color: widget.isSelected ? Colors.blue : Colors.black,
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
                      color: widget.isSelected
                          ? Color.fromRGBO(24, 144, 255, 1)
                          : Colors.white))
            ],
          );
  }
}



import 'package:antd_icons/antd_icons.dart';
import 'package:flutter/material.dart';
import 'package:spark/assetss/App_Colors.dart';

class kanbanboardcards extends StatefulWidget {
  final String columnTitle;
  final String tittle1;
  final String tittle2;
  final String tittle3;
  final String tittle4;
  final String tittle5;
  final String tittle6;
  final String tittle7;
  final String tittle8;
  final String tittle9;
  final String tittle10;

  const kanbanboardcards({
    super.key,
    required this.columnTitle,
    required this.tittle1,
    required this.tittle2,
    required this.tittle3,
    required this.tittle4,
    required this.tittle5,
    required this.tittle6,
    required this.tittle7,
    required this.tittle8,
    required this.tittle9,
    required this.tittle10,
  });

  @override
  State<kanbanboardcards> createState() => _cardanotherdataState();
}

class _cardanotherdataState extends State<kanbanboardcards> {
  bool isHovered = false;
  @override
  Widget build(BuildContext context) {
    //  double elevetionvalue = isHovered ? 10 : 0;
    return Stack(
      children: [
        Container(
          // width: MediaQuery.of(context).size.width - 6,

          child: MouseRegion(
            onEnter: (event) {
              setState(() {
                isHovered = true;
              });
            },
            onExit: (event) {
              setState(() {
                isHovered = false;
              });
            },
            child: Card(
              elevation: 0,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: isHovered
                        ? [
                            BoxShadow(
                              //  color: Colors.blue, // Change this to your desired shadow color
                              blurRadius: 0.5,
                              offset: Offset(
                                  0,
                                  isHovered
                                      ? 1
                                      : 0), // Negative offset for the bottom part
                            ),
                          ]
                        : []),
                child: Padding(
                  padding: const EdgeInsets.all(5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // const SizedBox(
                      //   height: 10,
                      // ),
                      Text(
                        widget.tittle1,
                        style: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      Text(widget.tittle2),
                      Text(widget.tittle3),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(widget.tittle4),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(widget.tittle5),
                          Text(widget.tittle6),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(widget.tittle7),
                          Text(widget.tittle8),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(widget.tittle9),
                          Text(widget.tittle10),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            padding: EdgeInsets.only(
                                bottom: 5, right: 5, left: 5, top: 3),
                            height: 25,
                            //  width: 40,
                            decoration: BoxDecoration(
                                //  color: Colors.green,
                                //  color: Color.fromRGBO(82, 196, 26, 1),
                                color: greencolor,
                                borderRadius: BorderRadius.circular(10)),
                            child: const Center(
                                child: Text(
                              "210",
                              style: TextStyle(color: Colors.white),
                            )),
                          ),
                          // SizedBox(
                          //   width: 8,
                          // ),
                          Container(
                            padding: EdgeInsets.only(
                                bottom: 5, right: 5, left: 5, top: 3),
                            height: 25,
                            // width: 40,
                            decoration: BoxDecoration(
                                // color: Color.fromRGBO(22, 119, 255, 2),
                                color: bluecolor,
                                borderRadius: BorderRadius.circular(10)),
                            child: Center(
                                child: Text(
                              "4234",
                              style: TextStyle(color: Colors.white),
                              textAlign: TextAlign.center,
                            )),
                          ),

                          // SizedBox(
                          //   width: 8,
                          // ),

                          Container(
                            padding: EdgeInsets.only(
                                bottom: 5, right: 5, left: 5, top: 3),
                            height: 25,
                            // width: 45,
                            decoration: BoxDecoration(
                                color: lightgreencolor,
                                borderRadius: BorderRadius.circular(10)),
                            child: Center(
                                child: Text("5041",
                                    style: TextStyle(color: Colors.white))),
                          ),

                          // SizedBox(
                          //   width: 8,
                          // ),

                          Container(
                            padding: EdgeInsets.only(
                                bottom: 5, right: 5, left: 5, top: 3),
                            height: 25,
                            //width: 30,
                            decoration: BoxDecoration(
                                color: redcolor,
                                borderRadius: BorderRadius.circular(10)),
                            child: Center(
                                child: Text("0",
                                    style: TextStyle(color: Colors.white))),
                          ),

                          // SizedBox(
                          //   width: 8,
                          // ),
                          Container(
                            padding: EdgeInsets.only(
                                bottom: 5, right: 5, left: 5, top: 3),
                            height: 25,
                            //  width: 30,
                            decoration: BoxDecoration(
                                color: orandecolor,
                                borderRadius: BorderRadius.circular(10)),
                            child: const Center(
                                child: Text("0",
                                    style: TextStyle(color: Colors.white))),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                              height: 18,
                              width: 18,
                              child: AntdIcons.outlined.profile.svg()),
                          Container(
                              height: 18,
                              width: 18,
                              child: AntdIcons.outlined.swap.svg()),
                          Container(
                              height: 18,
                              width: 18,
                              child: AntdIcons.outlined.delete.svg()),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          left: 0,
          top: 5,
          bottom: 3,
          child: Container(
            height: 230,
            //  width: 7,
            decoration: const BoxDecoration(
              color: bluecolor,
              border: Border(
                left: BorderSide(
                    color: Color(0xfe1677ff),
                    width: 5.0,
                    style: BorderStyle.solid),
              ),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  bottomLeft: Radius.circular(20.0)),
            ),
          ),
        )
      ],
    );
  }
}

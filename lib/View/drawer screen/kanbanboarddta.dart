import 'package:antd_icons/antd_icons.dart';
import 'package:flutter/material.dart';

class kanbanboarddataclass extends StatefulWidget {
  const kanbanboarddataclass({super.key});

  @override
  State<kanbanboarddataclass> createState() => _kanbanboarddataclassState();
}

class _kanbanboarddataclassState extends State<kanbanboarddataclass> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
cardtittle("tittle", "counter")
        
      ],
    );
  }
}

cardtittle(String tittle, String counter) {
  return Container(
      margin: EdgeInsets.only(
        top: 8,
        left: 5,
      ),
      width: double.infinity,
      height: 40,
      decoration: BoxDecoration(
          color: Color.fromRGBO(22, 119, 255, 2),
          borderRadius: BorderRadius.circular(5)),
      child: Padding(
        padding:
            const EdgeInsets.only(left: 10, right: 25, top: 10, bottom: 10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              tittle,
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            Container(
              height: 20,
              width: 28,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Center(child: Text(counter)),
            ),
          ],
        ),
      ));
}

// body data

cardanotherdata(String tittle1, tittle2, tittle3, tittle4, tittle5, tittle6,
    tittle7, tittle8, tittle9, tittle10) {
  return Stack(
    children: [
      Card(
        child: Padding(
          padding: const EdgeInsets.all(7),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 10,
              ),
              Text(
                tittle1,
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Text(tittle2),
              Text(tittle3),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(tittle4),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(tittle5),
                  Text(tittle6),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(tittle7),
                  Text(tittle8),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(tittle9),
                  Text(tittle10),
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
                    padding:
                        EdgeInsets.only(bottom: 5, right: 5, left: 5, top: 3),
                    height: 25,
                    //  width: 40,
                    decoration: BoxDecoration(
                        //  color: Colors.green,
                        color: Color.fromRGBO(82, 196, 26, 1),
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
                    padding:
                        EdgeInsets.only(bottom: 5, right: 5, left: 5, top: 3),
                    height: 25,
                    // width: 40,
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(22, 119, 255, 2),
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
                    padding:
                        EdgeInsets.only(bottom: 5, right: 5, left: 5, top: 3),
                    height: 25,
                    // width: 45,
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(19, 194, 194, 1),
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                        child: Text("5041",
                            style: TextStyle(color: Colors.white))),
                  ),

                  // SizedBox(
                  //   width: 8,
                  // ),

                  Container(
                    padding:
                        EdgeInsets.only(bottom: 5, right: 5, left: 5, top: 3),
                    height: 25,
                    //width: 30,
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(245, 34, 45, 1),
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                        child:
                            Text("0", style: TextStyle(color: Colors.white))),
                  ),

                  // SizedBox(
                  //   width: 8,
                  // ),
                  Container(
                    padding:
                        EdgeInsets.only(bottom: 5, right: 5, left: 5, top: 3),
                    height: 25,
                    //  width: 30,
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(250, 140, 22, 1),
                        borderRadius: BorderRadius.circular(10)),
                    child: const Center(
                        child:
                            Text("0", style: TextStyle(color: Colors.white))),
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
      // Positioned(
      //   left: 0,
      //   top: 0,
      //   bottom: 2,
      //   child: Container(
      //     height: 230,
      //     //  width: 7,
      //     decoration: const BoxDecoration(
      //       color: Colors.blue,
      //       border: Border(
      //         left: BorderSide(
      //             color: Color(0xfe1677ff),
      //             width: 7.0,
      //             style: BorderStyle.solid),
      //       ),
      //       borderRadius: BorderRadius.only(
      //           topLeft: Radius.circular(10.0),
      //           bottomLeft: Radius.circular(10.0)),
      //     ),
      //   ),
      // )
    ],
  );
}

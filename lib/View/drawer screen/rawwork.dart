// import 'package:flutter/material.dart';
// import 'package:spark/View/drawer%20screen/kanbanbobdy/kanbanbody.dart';

// class Myspark extends StatefulWidget {
//   @override
//   _MysparkState createState() => _MysparkState();
// }

// class _MysparkState extends State<Myspark> {
//   List<String> categories = [
//     'on Hold',
//     'inprogress',
//     'Done',
//     'inprogress agan',
//     'Done again'
//     //   "completed"
//   ];

//   Map<String, List<String>> categoryItems = {
//     'on Hold': List.generate(10, (index) => "Item ${index + 1}"),
//     // 'inprogress': List.generate(10, (index) => "Item ${index + 1}"),
//     // 'Done': List.generate(10, (index) => "Item ${index + 1}"),
//     'inprogress': [],
//     'Done': [],

//     'inprogress agan': List.generate(10, (index) => "Item ${index + 1}"),
//     'Done again': List.generate(10, (index) => "Item ${index + 1}"),
//     // "completed": [],
//   };

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: MediaQuery.of(context).size.width,
//       height: MediaQuery.of(context).size.height - 180,
//       color: const Color.fromRGBO(255, 255, 255, 1),
//       child: SingleChildScrollView(
//         scrollDirection: Axis.horizontal,
//         child: Row(
//           children: [
//             for (var category in categories)
//               DragTarget(
//                 onAccept: (String droppedCategory) {
//                   if (droppedCategory != category) {
//                     // Handle the drop here, move the item from droppedCategory to category
//                     setState(() {
//                       final droppedItem =
//                           categoryItems[droppedCategory]!.removeLast();
//                       categoryItems[category]!.add(droppedItem);
//                     });
//                   }
//                 },
//                 builder: (context, candidateData, rejectedData) {
//                   return Column(
//                     children: [
//                       cardtittle(category, "90"),
//                       Container(
//                         margin: EdgeInsets.only(left: 5),
//                         height: MediaQuery.of(context).size.height - 230,
//                         width: MediaQuery.of(context).size.width / 5.5,
//                         child: ListView.builder(
//                           itemCount: categoryItems[category]!.length,
//                           itemBuilder: (BuildContext context, int index) {
//                             return Draggable(
//                               feedback: Material(
//                                 child: cardanotherdatas(
//                                   tittle1: index == 0
//                                       ? "Whitney Dziama"
//                                       : index == 1
//                                           ? "completed"
//                                           : index == 2
//                                               ? "not completed"
//                                               : "Done",
//                                   tittle2: index == 0
//                                       ? "41 Smith St Lincoin"
//                                       : "123 Main St",
//                                   tittle3: index == 0
//                                       ? "Lincoin RI 02865"
//                                       : "City, State 12345",
//                                   tittle4: index == 0
//                                       ? "Dziama, Whitney - 1683"
//                                       : "Doe, John - 1234",
//                                   tittle5: "tittle5",
//                                   tittle6: index == 0
//                                       ? "Rhode Island E"
//                                       : "Some Location",
//                                   tittle7: index == 0
//                                       ? "Rep: Rick Steehier"
//                                       : "Rep: Jane Doe",
//                                   tittle8: index == 0
//                                       ? "SS: 10-27-2022"
//                                       : "SS: 11-30-2022",
//                                   tittle9: index == 0
//                                       ? "T: Wolfpack, RS"
//                                       : "T: Team XYZ",
//                                   tittle10: index == 0
//                                       ? "SS: 10-27-2022"
//                                       : "SS: 11-30-2022",
//                                 ),
//                               ),
//                               child: cardanotherdatas(
//                                 tittle1: index == 0
//                                     ? "Whitney Dziama"
//                                     : index == 1
//                                         ? "completed"
//                                         : index == 2
//                                             ? "not completed"
//                                             : "Done",
//                                 tittle2: index == 0
//                                     ? "41 Smith St Lincoin"
//                                     : "123 Main St",
//                                 tittle3: index == 0
//                                     ? "Lincoin RI 02865"
//                                     : "City, State 12345",
//                                 tittle4: index == 0
//                                     ? "Dziama, Whitney - 1683"
//                                     : "Doe, John - 1234",
//                                 tittle5: "tittle5",
//                                 tittle6: index == 0
//                                     ? "Rhode Island E"
//                                     : "Some Location",
//                                 tittle7: index == 0
//                                     ? "Rep: Rick Steehier"
//                                     : "Rep: Jane Doe",
//                                 tittle8: index == 0
//                                     ? "SS: 10-27-2022"
//                                     : "SS: 11-30-2022",
//                                 tittle9: index == 0
//                                     ? "T: Wolfpack, RS"
//                                     : "T: Team XYZ",
//                                 tittle10: index == 0
//                                     ? "SS: 10-27-2022"
//                                     : "SS: 11-30-2022",
//                               ),
//                               childWhenDragging: Container(),
//                               data: category
//                             );
//                           },
//                         ),
//                       ),
//                     ],
//                   );
//                 },
//               ),
//           ],
//         ),
//       ),
//     );
//   }

//   cardtittle(String tittle, String counter) {
//     return Container(
//         margin: const EdgeInsets.only(
//           top: 8,
//           left: 5,
//         ),
//         // width: double.infinity,
//         // width: 200,
//         width: MediaQuery.of(context).size.width / 5.5,
//         height: 40,
//         decoration: BoxDecoration(
//             color: Color.fromRGBO(22, 119, 255, 2),
//             borderRadius: BorderRadius.circular(5)),
//         child: Padding(
//           padding:
//               const EdgeInsets.only(left: 10, right: 25, top: 10, bottom: 10),
//           child: Row(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Text(
//                 tittle,
//                 style: TextStyle(
//                     color: Colors.white,
//                     fontWeight: FontWeight.bold,
//                     fontSize: 14),
//               ),
//               Container(
//                 height: 20,
//                 width: 28,
//                 decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.circular(10)),
//                 child: Center(
//                     child: Text(
//                   counter,
//                   style: TextStyle(fontSize: 14, color: Colors.blue),
//                 )),
//               ),
//             ],
//           ),
//         ));
//   }
// }

import 'package:flutter/material.dart';
import 'package:spark/View/drawer%20screen/kanbanbobdy/kanbanbodycard.dart';

class Myspark extends StatefulWidget {
  @override
  _MysparkState createState() => _MysparkState();
}

class _MysparkState extends State<Myspark> {
  List<String> categories = [
    'on Hold',
    'inprogress',
    'Done',
    'inprogress agan',
    'Done again'
  ];

  Map<String, List<String>> categoryItems = {
    'on Hold': List.generate(10, (index) => "Item ${index + 1}"),
    'inprogress': [],
    'Done': [],
    'inprogress agan': List.generate(10, (index) => "Item ${index + 1}"),
    'Done again': List.generate(10, (index) => "Item ${index + 1}"),
  };

  Map<String, String?> lastDraggedTaskMap = {};
  Map<String, int?> originalIndexMap = {};
  Map<String, GlobalKey> itemKeys = {};

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height - 180,
      color: const Color.fromRGBO(255, 255, 255, 1),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            for (var category in categories)
              DragTarget(
                onAccept: (String droppedCategory) {
                  if (droppedCategory != category) {
                    _handleDrop(droppedCategory, category);
                  }
                },
                onWillAccept: (String? data) {
                  // Check if the task can be accepted by this column
                  return !(data == lastDraggedTaskMap[category] &&
                      originalIndexMap[category] ==
                          categoryItems[category]!.indexOf(data!));
                },
                onLeave: (String? data) {
                  // Store the last dragged task and its original index
                  lastDraggedTaskMap[category] = data;
                  originalIndexMap[category] =
                      categoryItems[category]!.indexOf(data!);
                },
                builder: (context, candidateData, rejectedData) {
                  return Column(
                    key: ValueKey(category),
                    children: [
                      cardtittle(category, "90"),
                      Container(
                        margin: EdgeInsets.only(left: 5),
                        height: MediaQuery.of(context).size.height - 230,
                        width: MediaQuery.of(context).size.width / 5.5,
                        child: ReorderableListView(
                          onReorder: (oldIndex, newIndex) {
                            _handleReorder(category, oldIndex, newIndex);
                          },
                          children: List.generate(
                            categoryItems[category]!.length,
                            (index) {
                              final itemKeyss =
                                  ValueKey("${category}_${index}");
                              return Draggable(
                                key: itemKeyss,
                                feedback: Material(
                                  child: cardanotherdatas(
                                    tittle1: index == 0
                                        ? "Whitney Dziama"
                                        : index == 1
                                            ? "completed"
                                            : index == 2
                                                ? "not completed"
                                                : "Done",
                                    tittle2: index == 0
                                        ? "41 Smith St Lincoin"
                                        : "123 Main St",
                                    tittle3: index == 0
                                        ? "Lincoin RI 02865"
                                        : "City, State 12345",
                                    tittle4: index == 0
                                        ? "Dziama, Whitney - 1683"
                                        : "Doe, John - 1234",
                                    tittle5: "tittle5",
                                    tittle6: index == 0
                                        ? "Rhode Island E"
                                        : "Some Location",
                                    tittle7: index == 0
                                        ? "Rep: Rick Steehier"
                                        : "Rep: Jane Doe",
                                    tittle8: index == 0
                                        ? "SS: 10-27-2022"
                                        : "SS: 11-30-2022",
                                    tittle9: index == 0
                                        ? "T: Wolfpack, RS"
                                        : "T: Team XYZ",
                                    tittle10: index == 0
                                        ? "SS: 10-27-2022"
                                        : "SS: 11-30-2022",
                                  ),
                                ),
                                child: cardanotherdatas(
                                  tittle1: index == 0
                                      ? "Whitney Dziama"
                                      : index == 1
                                          ? "completed"
                                          : index == 2
                                              ? "not completed"
                                              : "Done",
                                  tittle2: index == 0
                                      ? "41 Smith St Lincoin"
                                      : "123 Main St",
                                  tittle3: index == 0
                                      ? "Lincoin RI 02865"
                                      : "City, State 12345",
                                  tittle4: index == 0
                                      ? "Dziama, Whitney - 1683"
                                      : "Doe, John - 1234",
                                  tittle5: "tittle5",
                                  tittle6: index == 0
                                      ? "Rhode Island E"
                                      : "Some Location",
                                  tittle7: index == 0
                                      ? "Rep: Rick Steehier"
                                      : "Rep: Jane Doe",
                                  tittle8: index == 0
                                      ? "SS: 10-27-2022"
                                      : "SS: 11-30-2022",
                                  tittle9: index == 0
                                      ? "T: Wolfpack, RS"
                                      : "T: Team XYZ",
                                  tittle10: index == 0
                                      ? "SS: 10-27-2022"
                                      : "SS: 11-30-2022",
                                ),
                                childWhenDragging: Container(),
                                data: category,
                                onDragCompleted: () {},
                              );
                            },
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
          ],
        ),
      ),
    );
  }

  void _handleDrop(String fromCategory, String toCategory) async {
    final moveTask = await showAlertDialog(context);
    if (moveTask) {
      setState(() {
        // Remove the dropped item from the original category
        final droppedItem = categoryItems[fromCategory]!.removeLast();

        // Add the dropped item to the new category
        categoryItems[toCategory]!.add(droppedItem);

        // Clear the lastDraggedTaskMap after a successful drop
        lastDraggedTaskMap.clear();
      });
    }
  }



  void _handleReorder(String category, int oldIndex, int newIndex) {
    setState(() {
      if (oldIndex != newIndex) {
        final task = categoryItems[category]!.removeAt(oldIndex);
        categoryItems[category]!.insert(newIndex, task);
      }
    });
  }

  Future showAlertDialog(BuildContext context) async {
    return await showDialog<bool>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Move Task?"),
          content: Text("Do you want to move this task to the new column?"),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context, false); // Cancel
              },
              child: Text("Cancel"),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context, true); // Move
              },
              child: Text("Move"),
            ),
          ],
        );
      },
    );
  }

  cardtittle(String title, String counter) {
    return Container(
      margin: const EdgeInsets.only(
        top: 8,
        left: 5,
      ),
      width: MediaQuery.of(context).size.width / 5.5,
      height: 40,
      decoration: BoxDecoration(
        color: Color.fromRGBO(22, 119, 255, 2),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Padding(
        padding:
            const EdgeInsets.only(left: 10, right: 25, top: 10, bottom: 10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
            Container(
              height: 20,
              width: 28,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  counter,
                  style: TextStyle(fontSize: 14, color: Colors.blue),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
//  color: Colors.white,
//           padding: iscollapse
//               ? EdgeInsets.only(right: 10)
//               : EdgeInsets.only(right: 0),

//          // height: MediaQuery.of(context).size.height,
//            width: iscollapse ? 50 : 220,
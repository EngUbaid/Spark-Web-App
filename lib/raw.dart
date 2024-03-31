import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:spark/View/drawer%20screen/kanbanboardCards/kanbanbodycard.dart';
import 'package:spark/assetss/App_Colors.dart';
import 'package:spark/common/iconchanges.dart';

class KanbanColumn {
  String title;
  int count;
  List<kanbanboardcards> tasks;

  KanbanColumn({required this.title, required this.count, required this.tasks});
}

class TaskWidget extends StatefulWidget {
  final kanbanboardcards task;
  final ValueChanged<kanbanboardcards> onDelete;
  final Key key;

  TaskWidget({
    required this.task,
    required this.onDelete,
    required this.key,
  });

  @override
  _TaskWidgetState createState() => _TaskWidgetState();
}

class _TaskWidgetState extends State<TaskWidget> {
  @override
  Widget build(BuildContext context) {
    return Draggable<kanbanboardcards>(
      data: widget.task,
      feedback: widget.task,
      childWhenDragging: Container(),
      child: widget.task,
    );
  }
}

class KanbanBoard extends StatefulWidget {
  final List<KanbanColumn> columns;

  const KanbanBoard({required this.columns});

  @override
  _KanbanBoardState createState() => _KanbanBoardState();
}

class _KanbanBoardState extends State<KanbanBoard> {
  String searchQuery = '';
  Future<bool?> shoconfirmdailog() async {
    return await showDialog<bool?>(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: Text("Are You want To Move this ?"),
          actions: [
            TextButton(
                onPressed: () {
                  Navigator.pop(context, false);
                },
                child: Text("Cancel")),
            TextButton(
                onPressed: () {
                  Navigator.pop(context, true);
                },
                child: Text("Move"))
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: MediaQuery.of(context).size.width,
      
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            for (int i = 0; i < widget.columns.length; i++)
              buildColumn(widget.columns[i].title, widget.columns[i].count,
                  widget.columns[i].tasks, i),
          ],
        ),
      ),
    );
  }

  double _calculateContainerHeight(
    double screenWidth,
  ) {
    var pro = Provider.of<navigationprovider>(context);
    var iscollapse = pro.iscolapsed;
    double screenheight = MediaQuery.of(context).size.height;
    // Set collapsed height based on your requirements

    if (screenWidth >= 1600) {
      return screenheight - 180;
    } else if (screenWidth >= 1186 && screenWidth <= 1600) {
      return screenheight - 225;
    } else if (screenWidth >= 1056 && screenWidth <= 1185) {
      return iscollapse ? screenheight - 230 : screenheight - 255;
    } else if (screenWidth >= 736 && screenWidth <= 1055) {
      return iscollapse ? screenheight - 260 : screenheight - 255;
    } else if (screenWidth >= 660 && screenWidth <= 735) {
      return iscollapse ? screenheight - 255 : screenheight - 290;
    } else if (screenWidth <= 659 && screenWidth >= 606) {
      return iscollapse ? screenheight - 255 : screenheight - 320;
    } else if (screenWidth <= 605 && screenWidth >= 531) {
      return iscollapse ? screenheight - 285 : screenheight - 320;
    } else if (screenWidth <= 530 && screenWidth >= 0) {
      return iscollapse ? screenheight - 320 : screenheight - 320;
    } else {
      return 0;
    }
  }

  Widget buildColumn(
    String title,
    int count,
    List<kanbanboardcards> tasks,
    int columnIndex,
  ) {
    var screenwidth = MediaQuery.of(context).size.width;

    return Column(
      key: ValueKey(title),
      children: [
        // Container(
        //   // color: Colors.white,
        //   width: 230,
        //   child: cardtittle(title, "10", context),
        // ),
        cardtittle(title, count, context),
        Container(
          margin: const EdgeInsets.only(left: 5),
          height: _calculateContainerHeight(
            screenwidth,
          ),
          width: 240,
          child: DragTarget<kanbanboardcards>(
            onAccept: (data) {
              // Check if the task is coming from a different column
              if (data.columnTitle != title) {
                shoconfirmdailog().then((moveTask) {
                  if (moveTask == true) {
                    setState(() {
                      tasks.add(data);
                    });
                    removeFromOriginalColumn(data, title);
                  }
                });
              }
            },
            builder: (context, candidateData, rejectedData) {
              return ReorderableListView(
                buildDefaultDragHandles: false,
                onReorder: (oldIndex, newIndex) {
                  setState(() {
                    if (oldIndex != newIndex) {
                      final task = tasks.removeAt(oldIndex);
                      tasks.insert(newIndex, task);
                    }
                  });
                },
                children: [
                  for (var task in tasks)
                    TaskWidget(
                      key: ValueKey(task),
                      task: task,
                      onDelete: (deletedTask) {
                        setState(() {
                          tasks.remove(deletedTask);
                        });
                      },
                    ),
                ],
              );
            },
          ),
        ),
      ],
    );
  }

  void removeFromOriginalColumn(kanbanboardcards task, String columnTitle) {
    for (var column in widget.columns) {
      if (column.tasks.contains(task) && column.title != columnTitle) {
        setState(() {
          column.tasks.remove(task);
        });
        break;
      }
    }
  }
}

Widget cardtittle(String title, int counter, BuildContext context) {
  return Container(
    margin: const EdgeInsets.only(
      top: 8,
      left: 5,
    ),
    // width: MediaQuery.of(context).size.width / 5.5,
    width: 230,
    height: 40,
    decoration: BoxDecoration(
      color: bluecolor,
      borderRadius: BorderRadius.circular(5),
    ),
    child: Padding(
      padding: const EdgeInsets.only(left: 10, right: 25, top: 10, bottom: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(
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
                counter.toString(),
                style: TextStyle(fontSize: 14, color: Colors.blue),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

class Kanbanboardmaker extends StatefulWidget {
  const Kanbanboardmaker({super.key});

  @override
  State<Kanbanboardmaker> createState() => _KanbanboardmakerState();
}

class _KanbanboardmakerState extends State<Kanbanboardmaker> {
  @override
  Widget build(BuildContext context) {
    return KanbanBoard(
      columns: [
        KanbanColumn(
            title: 'To Do',
            count: 12,
            tasks: List.generate(10, (index) {
              return kanbanboardcards(
                columnTitle: "To Do",
                tittle1: index == 0 ? "Whitney Dziama" : "John Doe",
                tittle2: index == 0 ? "41 Smith St Lincoin" : "123 Main St",
                tittle3: index == 0 ? "Lincoin RI 02865" : "City, State 12345",
                tittle4:
                    index == 0 ? "Dziama, Whitney - 1683" : "Doe, John - 1234",
                tittle5: "tittle5",
                tittle6: index == 0 ? "Rhode Island E" : "Some Location",
                tittle7: index == 0 ? "Rep: Rick Steehier" : "Rep: Jane Doe",
                tittle8: index == 0 ? "SS: 10-27-2022" : "SS: 11-30-2022",
                tittle9: index == 0 ? "T: Wolfpack, RS" : "T: Team XYZ",
                tittle10: index == 0 ? "SS: 10-27-2022" : "SS: 11-30-2022",
              );
            })),
        KanbanColumn(
            title: 'In Progress',
            count: 10,
            tasks: List.generate(10, (index) {
              return kanbanboardcards(
                columnTitle: "In Progress",
                tittle1: index == 0
                    ? "Whitney Dziama"
                    : index == 1
                        ? "John Doe"
                        : " Smith",
                tittle2: index == 0 ? "41 Smith St Lincoin" : "123 Main St",
                tittle3: index == 0 ? "Lincoin RI 02865" : "City, State 12345",
                tittle4:
                    index == 0 ? "Dziama, Whitney - 1683" : "Doe, John - 1234",
                tittle5: "tittle5",
                tittle6: index == 0 ? "Rhode Island E" : "Some Location",
                tittle7: index == 0 ? "Rep: Rick Steehier" : "Rep: Jane Doe",
                tittle8: index == 0 ? "SS: 10-27-2022" : "SS: 11-30-2022",
                tittle9: index == 0 ? "T: Wolfpack, RS" : "T: Team XYZ",
                tittle10: index == 0 ? "SS: 10-27-2022" : "SS: 11-30-2022",
              );
            })),
        KanbanColumn(
            title: 'not Done',
            count: 11,
            tasks: List.generate(10, (index) {
              return kanbanboardcards(
                columnTitle: "not Done",
                tittle1: index == 0
                    ? " Dziama"
                    : index == 1
                        ? " Doe"
                        : index == 2
                            ? " Smith"
                            : "Kohli",
                tittle2: index == 0 ? "41 Smith St Lincoin" : "123 Main St",
                tittle3: index == 0 ? "Lincoin RI 02865" : "City, State 12345",
                tittle4:
                    index == 0 ? "Dziama, Whitney - 1683" : "Doe, John - 1234",
                tittle5: "tittle5",
                tittle6: index == 0 ? "Rhode Island E" : "Some Location",
                tittle7: index == 0 ? "Rep: Rick Steehier" : "Rep: Jane Doe",
                tittle8: index == 0 ? "SS: 10-27-2022" : "SS: 11-30-2022",
                tittle9: index == 0 ? "T: Wolfpack, RS" : "T: Team XYZ",
                tittle10: index == 0 ? "SS: 10-27-2022" : "SS: 11-30-2022",
              );
            })),
        KanbanColumn(title: 'ok', count: 8, tasks: []),
        KanbanColumn(title: 'two days left', count: 6, tasks: []),
        KanbanColumn(title: 'month left', count: 4, tasks: []),
        KanbanColumn(title: 'cool', count: 8, tasks: []),
        KanbanColumn(title: 'kanban', count: 6, tasks: []),
        KanbanColumn(title: 'board', count: 4, tasks: []),
      ],
    );
  }
}



    //     List<String> columnTitles = ['To Do', 'In Progress', 'Done', 'not Done'];
    //   List<String> tittles = [
    //     'Whitney Dziama',
    //     '41 Smith St Lincoin',
    //     'Lincoin RI 02865',
    //     'Dziama, Whitney - 1683',
    //     'tittle5',
    //     'Rhode Island E',
    //     'Rep: Rick Steehier',
    //     'SS: 10-27-2022',
    //     'T: Wolfpack, RS',
    //     'SS: 10-27-2022',
    //   ];

    //   List<KanbanColumn> columns = [];

    //    for (var title in columnTitles) {
    //     List<cardanotherdatas> tasks = List.generate(10, (index) {
    //       return cardanotherdatas(
    //         columnTitle: title,
    //         tittle1: tittles[0],
    //         tittle2: tittles[1],
    //         tittle3: tittles[2],
    //         tittle4: tittles[3],
    //         tittle5: tittles[4],
    //         tittle6: tittles[5],
    //         tittle7: tittles[6],
    //         tittle8: tittles[7],
    //         tittle9: tittles[8],
    //         tittle10: tittles[9],
    //       );
    //     });

    //     columns.add(KanbanColumn(title: title, tasks: tasks));
    //   }

    //   return KanbanBoard(columns: columns);
    // }
// class Kanbanboardmaker extends StatefulWidget {
//   const Kanbanboardmaker({Key? key}) : super(key: key);

//   @override
//   State<Kanbanboardmaker> createState() => _KanbanboardmakerState();
// }

// class _KanbanboardmakerState extends State<Kanbanboardmaker> {
//   @override
//   Widget build(BuildContext context) {
//     List<String> columnTitles = [
//       'To Do',
//       'In Progress',
//       'Done',
//       'not Done',
//       // 'Two day left',
//       // 'Three days left',
//       // 'Four days left',
//       // 'One week left',
//       // '15 days left',
//       // '30 days left',
//       // '6 months left',
//     ];

//     List<List<String>> cardData = [
//       [
//         'Whitney Dziama',
//         '41 Smith St Lincoin',
//         'Lincoin RI 02865',
//         'Dziama, Whitney - 1683',
//         'tittle5',
//         'Rhode Island E',
//         'Rep: Rick Steehier',
//         'SS: 10-27-2022',
//         'T: Wolfpack, RS',
//         'SS: 10-27-2022',
//       ],
//       [
//         'John Doe',
//         '123 Main St',
//         'City, State 12345',
//         'Doe, John - 1234',
//         'tittle5',
//         'Some Location',
//         'Rep: Jane Doe',
//         'SS: 11-30-2022',
//         'T: Team XYZ',
//         'SS: 11-30-2022',
//       ],
//       [
//         'Smith',
//         '123',
//         'City, State 345',
//         'Doe, John - 1234',
//         'tittle5',
//         'Some Location',
//         'Rep: Jane Doe',
//         'SS: 11-30-2022',
//         'T: Team XYZ',
//         'SS: 11-30-2022',
//       ],
//       // Add more sets of data for each card as needed
//     ];

//     List<KanbanColumn> columns = [];

//     for (int i = 0; i < columnTitles.length; i++) {
//       List<cardanotherdatas> tasks = [];

//       if (i < cardData.length) {
//         tasks = List.generate(10, (index) {
//           return cardanotherdatas(
//             columnTitle: columnTitles[i],
//             tittle1: cardData[i][0],
//             tittle2: cardData[i][1],
//             tittle3: cardData[i][2],
//             tittle4: cardData[i][3],
//             tittle5: cardData[i][4],
//             tittle6: cardData[i][5],
//             tittle7: cardData[i][6],
//             tittle8: cardData[i][7],
//             tittle9: cardData[i][8],
//             tittle10: cardData[i][9],
//           );
//         });
//       }

//       columns.add(KanbanColumn(title: columnTitles[i], tasks: tasks));
//     }

//     return KanbanBoard(columns: columns);
//   }
// }

// class Kanbanboardmaker extends StatefulWidget {
//   const Kanbanboardmaker({Key? key}) : super(key: key);

//   @override
//   State<Kanbanboardmaker> createState() => _KanbanboardmakerState();
// }

// class _KanbanboardmakerState extends State<Kanbanboardmaker> {
//   @override
//   Widget build(BuildContext context) {
//     List<String> columnTitles = [
//       'To Do',
//       'In Progress',
//       'Done',
//       'not Done',
//       'Two day left',
//       'Three days left',
//       'Four days left',
//       'One week left',
//       '15 days left',
//       '30 days left',
//       '6 months left',
//     ];

//     List<List<String>> cardData = [
//       [
//         'Whitney Dziama',
//         '41 Smith St Lincoin',
//         'Lincoin RI 02865',
//         'Dziama, Whitney - 1683',
//         'tittle5',
//         'Rhode Island E',
//         'Rep: Rick Steehier',
//         'SS: 10-27-2022',
//         'T: Wolfpack, RS',
//         'SS: 10-27-2022',
//       ],
//       [
//         'John Doe',
//         '123 Main St',
//         'City, State 12345',
//         'Doe, John - 1234',
//         'tittle5',
//         'Some Location',
//         'Rep: Jane Doe',
//         'SS: 11-30-2022',
//         'T: Team XYZ',
//         'SS: 11-30-2022',
//       ],
//       [
//         'Smith',
//         '123',
//         'City, State 345',
//         'Doe, John - 1234',
//         'tittle5',
//         'Some Location',
//         'Rep: Jane Doe',
//         'SS: 11-30-2022',
//         'T: Team XYZ',
//         'SS: 11-30-2022',
//       ],
//       // Add more sets of data for each card as needed
//       [
//         'Kohli',
//         '123',
//         'City, State 345',
//         'Doe, John - 1234',
//         'tittle5',
//         'Some Location',
//         'Rep: Jane Doe',
//         'SS: 11-30-2022',
//         'T: Team XYZ',
//         'SS: 11-30-2022',
//       ]
//     ];

//     List<KanbanColumn> columns = [];

//     for (int i = 0; i < columnTitles.length; i++) {
//       List<cardanotherdatas> tasks = [];

//       for (int j = 0; j < cardData.length; j++) {
//         tasks.add(cardanotherdatas(
//           columnTitle: columnTitles[i],
//           tittle1: cardData[j][0],
//           tittle2: cardData[j][1],
//           tittle3: cardData[j][2],
//           tittle4: cardData[j][3],
//           tittle5: cardData[j][4],
//           tittle6: cardData[j][5],
//           tittle7: cardData[j][6],
//           tittle8: cardData[j][7],
//           tittle9: cardData[j][8],
//           tittle10: cardData[j][9],
//         ));
//       }

//       columns.add(KanbanColumn(title: columnTitles[i], tasks: tasks));
//     }

//     return KanbanBoard(columns: columns);
//   }
// }

// class Kanbanboardmaker extends StatefulWidget {
//   const Kanbanboardmaker({Key? key}) : super(key: key);

//   @override
//   State<Kanbanboardmaker> createState() => _KanbanboardmakerState();
// }

// class _KanbanboardmakerState extends State<Kanbanboardmaker> {
//   @override
//   Widget build(BuildContext context) {
//     List<String> columnTitles = [
//       'To Do',
//       'In Progress',
//       'Done',
//       'not Done',
//       'Two day left',
//       'Three days left',
//       'Four days left',
//       'One week left',
//       '15 days left',
//       '30 days left',
//       '6 months left',
//     ];

//     List<List<List<String>>> cardData = [
//       [
//         [
//           'Whitney Dziama',
//           '41 Smith St Lincoln',
//           'Lincoln RI 02865',
//           'Dziama, Whitney - 1683',
//           'tittle5',
//           'Rhode Island E',
//           'Rep: Rick Steehier',
//           'SS: 10-27-2022',
//           'T: Wolfpack, RS',
//           'SS: 10-27-2022',
//         ],
//         [
//           'OwnDoe',
//           'My St Lincoln',
//           'Lincoln RI 02865',
//           'Dziama, Whitney - 1683',
//           'tittle5',
//           'Rhode Island E',
//           'Rep: Rick Steehier',
//           'SS: 10-27-2022',
//           'T: Wolfpack, RS',
//           'SS: 10-27-2022',
//         ],
//         [
//           'Babar',
//           '123',
//           'City, State 345',
//           'Doe, John - 1234',
//           'tittle5',
//           'Some Location',
//           'Rep: Jane Doe',
//           'SS: 11-30-2022',
//           'T: Team XYZ',
//           'SS: 11-30-2022',
//         ],
//         // Add more sets of data for each card as needed
//       ],
//       [ // In Progress
//         [
//           'John Doe',
//           '123 Main St',
//           'City, State 12345',
//           'Doe, John - 1234',
//           'tittle5',
//           'Some Location',
//           'Rep: Jane Doe',
//           'SS: 11-30-2022',
//           'T: Team XYZ',
//           'SS: 11-30-2022',
//         ],
//         [
//           'OwnDoe',
//           'My St Lincoln',
//           'Lincoln RI 02865',
//           'Dziama, Whitney - 1683',
//           'tittle5',
//           'Rhode Island E',
//           'Rep: Rick Steehier',
//           'SS: 10-27-2022',
//           'T: Wolfpack, RS',
//           'SS: 10-27-2022',
//         ],
//         [
//           'Babar',
//           '123',
//           'City, State 345',
//           'Doe, John - 1234',
//           'tittle5',
//           'Some Location',
//           'Rep: Jane Doe',
//           'SS: 11-30-2022',
//           'T: Team XYZ',
//           'SS: 11-30-2022',
//         ],
//         // Add more sets of data for each card as needed
//       ],
//       // Leave the rest of the columns empty
//      // [], [], [], [], [], [], [],

//     ];

//     List<KanbanColumn> columns = [];

//     for (int i = 0; i < columnTitles.length; i++) {
//       List<cardanotherdatas> tasks = [];

//       for (int j = 0; j < cardData[i].length; j++) {
//         tasks.add(cardanotherdatas(
//           columnTitle: columnTitles[i],
//           tittle1: cardData[i][j][0],
//           tittle2: cardData[i][j][1],
//           tittle3: cardData[i][j][2],
//           tittle4: cardData[i][j][3],
//           tittle5: cardData[i][j][4],
//           tittle6: cardData[i][j][5],
//           tittle7: cardData[i][j][6],
//           tittle8: cardData[i][j][7],
//           tittle9: cardData[i][j][8],
//           tittle10: cardData[i][j][9],
//         ));
//       }

//       columns.add(KanbanColumn(title: columnTitles[i], tasks: tasks));
//     }

//     return KanbanBoard(columns: columns);
//   }
// }

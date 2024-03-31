import 'dart:async';
import 'package:flutter/material.dart';
import 'package:spark/View/drawer%20screen/kanbanboardCards/kanbanbodycard.dart';

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
      child: widget.task,
      feedback: Material(
        child: widget.task,
      ),
      childWhenDragging: Container(),
      onDragStarted: () {
        print("Task dragged from: ${widget.task.columnTitle}");
      },
      // onDragEnd: (details) {
      //   if (details.wasAccepted) {
      //     widget.onDelete(widget.task);
      //   }
      // },
    );
  }
}

class CustomColumnWidget extends StatefulWidget {
  final String columnTitle;
  final Widget titleWidget;
  final List<kanbanboardcards> tasks;
  final ValueChanged<kanbanboardcards> onDelete;

  const CustomColumnWidget({
    required this.columnTitle,
    required this.titleWidget,
    required this.tasks,
    required this.onDelete,
  });

  @override
  State<CustomColumnWidget> createState() => _CustomColumnWidgetState();
}

class _CustomColumnWidgetState extends State<CustomColumnWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.only(left: 5),
          width: 250,
          child: widget.titleWidget,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(left: 10),
              height: MediaQuery.of(context).size.height - 220,
              width: 250,
              child: DragTarget<kanbanboardcards>(
                onWillAccept: (data) {
                  return true;
                },
                onAccept: (data) async {
                  final movetask = await showdragAlertDialog(context);
                  if (movetask == true) {
                    setState(() {
                      widget.tasks.add(data);
                    });

                    print("Task dropped to: ${widget.columnTitle}");
                  }
                },
                builder: (context, candidateData, rejectedData) {
                  return ListView.builder(
                    itemCount: widget.tasks.length,
                    itemBuilder: (context, index) {
                      return TaskWidget(
                        key: ValueKey(widget.tasks[index]),
                        task: widget.tasks[index],
                        onDelete: (deletedTask) {
                          setState(() {
                            widget.tasks.remove(deletedTask);
                          });
                        },
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ],
    );
  }

  Future<bool?> showdragAlertDialog(BuildContext context) async {
    return await showDialog<bool?>(
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(
          builder: (BuildContext context, StateSetter setState) {
            return AlertDialog(
              title: Text("Move Task?"),
              content: Text("Do you want to move this task to the new column?"),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context, false);
                  },
                  child: Text("Cancel"),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pop(context, true);
                  },
                  child: Text("Move"),
                ),
              ],
            );
          },
        );
      },
    );
  }
}

class Kanbanboardclass extends StatefulWidget {
  const Kanbanboardclass({super.key});

  @override
  State<Kanbanboardclass> createState() => _KanbanboardclassState();
}

class _KanbanboardclassState extends State<Kanbanboardclass> {
  ScrollController controller = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CustomColumnWidget(
                columnTitle: "To do",
                onDelete: (value) {},
                titleWidget: cardtittle("To do", "24"),
                tasks: List.generate(10, (index) {
                  return kanbanboardcards(
                    columnTitle: "To do",
                    tittle1: index == 0 ? "Whitney Dziama" : "John Doe",
                    tittle2: index == 0 ? "41 Smith St Lincoin" : "123 Main St",
                    tittle3:
                        index == 0 ? "Lincoin RI 02865" : "City, State 12345",
                    tittle4: index == 0
                        ? "Dziama, Whitney - 1683"
                        : "Doe, John - 1234",
                    tittle5: "tittle5",
                    tittle6: index == 0 ? "Rhode Island E" : "Some Location",
                    tittle7:
                        index == 0 ? "Rep: Rick Steehier" : "Rep: Jane Doe",
                    tittle8: index == 0 ? "SS: 10-27-2022" : "SS: 11-30-2022",
                    tittle9: index == 0 ? "T: Wolfpack, RS" : "T: Team XYZ",
                    tittle10: index == 0 ? "SS: 10-27-2022" : "SS: 11-30-2022",
                  );
                })),
            CustomColumnWidget(
                columnTitle: "in progress",
                onDelete: (value) {},
                titleWidget: cardtittle("in progress", "24"),
                tasks: List.generate(10, (index) {
                  return kanbanboardcards(
                    columnTitle: "in progress",
                    tittle1: index == 0
                        ? "stev smith"
                        : index == 1
                            ? "John"
                            : index == 2
                                ? "warner"
                                : "kohli",
                    tittle2: index == 0 ? "kane" : "123 Main St",
                    tittle3:
                        index == 0 ? "Lincoin RI 02865" : "City, State 12345",
                    tittle4: index == 0
                        ? "Dziama, Whitney - 1683"
                        : "Doe, John - 1234",
                    tittle5: "tittle5",
                    tittle6: index == 0 ? "Rhode Island E" : "Some Location",
                    tittle7:
                        index == 0 ? "Rep: Rick Steehier" : "Rep: Jane Doe",
                    tittle8: index == 0 ? "SS: 10-27-2022" : "SS: 11-30-2022",
                    tittle9: index == 0 ? "T: Wolfpack, RS" : "T: Team XYZ",
                    tittle10: index == 0 ? "SS: 10-27-2022" : "SS: 11-30-2022",
                  );
                })),
            // CustomColumnWidget(
            //     onDelete: (value) {},
            //     titleWidget: cardtittle("in progressss", "24"),
            //     tasks: []),
            CustomColumnWidget(
                columnTitle: "Not Completed",
                onDelete: (value) {},
                titleWidget: cardtittle("Not Completed", "24"),
                tasks: []),
            // CustomColumnWidget(
            //     onDelete: (value) {},
            //     titleWidget: cardtittle("Not Done ", "24"),
            //     tasks: List.generate(10, (index) {
            //       return cardanotherdatas(
            //         columnTitle: "Not Done ",
            //         tittle1: index == 0 ? "Whitney Dziama" : "John Doe",
            //         tittle2: index == 0 ? "41 Smith St Lincoin" : "123 Main St",
            //         tittle3:
            //             index == 0 ? "Lincoin RI 02865" : "City, State 12345",
            //         tittle4: index == 0
            //             ? "Dziama, Whitney - 1683"
            //             : "Doe, John - 1234",
            //         tittle5: "tittle5",
            //         tittle6: index == 0 ? "Rhode Island E" : "Some Location",
            //         tittle7:
            //             index == 0 ? "Rep: Rick Steehier" : "Rep: Jane Doe",
            //         tittle8: index == 0 ? "SS: 10-27-2022" : "SS: 11-30-2022",
            //         tittle9: index == 0 ? "T: Wolfpack, RS" : "T: Team XYZ",
            //         tittle10: index == 0 ? "SS: 10-27-2022" : "SS: 11-30-2022",
            //       );
            //     })),
            // CustomColumnWidget(
            //     onDelete: (value) {},
            //     titleWidget: cardtittle("on holt not", "24"),
            //     tasks: List.generate(10, (index) {
            //       return cardanotherdatas(
            //         columnTitle: "on holt not",
            //         tittle1: index == 0 ? "Whitney Dziama" : "John Doe",
            //         tittle2: index == 0 ? "41 Smith St Lincoin" : "123 Main St",
            //         tittle3:
            //             index == 0 ? "Lincoin RI 02865" : "City, State 12345",
            //         tittle4: index == 0
            //             ? "Dziama, Whitney - 1683"
            //             : "Doe, John - 1234",
            //         tittle5: "tittle5",
            //         tittle6: index == 0 ? "Rhode Island E" : "Some Location",
            //         tittle7:
            //             index == 0 ? "Rep: Rick Steehier" : "Rep: Jane Doe",
            //         tittle8: index == 0 ? "SS: 10-27-2022" : "SS: 11-30-2022",
            //         tittle9: index == 0 ? "T: Wolfpack, RS" : "T: Team XYZ",
            //         tittle10: index == 0 ? "SS: 10-27-2022" : "SS: 11-30-2022",
            //       );
            //     })),
            // CustomColumnWidget(
            //     onDelete: (value) {},
            //     titleWidget: cardtittle("not in progres", "24"),
            //     tasks: List.generate(10, (index) {
            //       return cardanotherdatas(
            //         columnTitle: "not in progres",
            //         tittle1: index == 0
            //             ? "stev smith"
            //             : index == 1
            //                 ? "John"
            //                 : index == 2
            //                     ? "warner"
            //                     : "kohli",
            //         tittle2: index == 0 ? "kane" : "123 Main St",
            //         tittle3:
            //             index == 0 ? "Lincoin RI 02865" : "City, State 12345",
            //         tittle4: index == 0
            //             ? "Dziama, Whitney - 1683"
            //             : "Doe, John - 1234",
            //         tittle5: "tittle5",
            //         tittle6: index == 0 ? "Rhode Island E" : "Some Location",
            //         tittle7:
            //             index == 0 ? "Rep: Rick Steehier" : "Rep: Jane Doe",
            //         tittle8: index == 0 ? "SS: 10-27-2022" : "SS: 11-30-2022",
            //         tittle9: index == 0 ? "T: Wolfpack, RS" : "T: Team XYZ",
            //         tittle10: index == 0 ? "SS: 10-27-2022" : "SS: 11-30-2022",
            //       );
            //     })),
            // CustomColumnWidget(
            //     onDelete: (value) {},
            //     titleWidget: cardtittle("in progress", "24"),
            //     tasks: []),
            // CustomColumnWidget(
            //     onDelete: (value) {},
            //     titleWidget: cardtittle("Not Completed", "24"),
            //     tasks: []),
            // CustomColumnWidget(
            //     onDelete: (value) {},
            //     titleWidget: cardtittle("noo", "24"),
            //     tasks: List.generate(10, (index) {
            //       return cardanotherdatas(
            //         columnTitle: "noo",
            //         tittle1: index == 0 ? "Whitney Dziama" : "John Doe",
            //         tittle2: index == 0 ? "41 Smith St Lincoin" : "123 Main St",
            //         tittle3:
            //             index == 0 ? "Lincoin RI 02865" : "City, State 12345",
            //         tittle4: index == 0
            //             ? "Dziama, Whitney - 1683"
            //             : "Doe, John - 1234",
            //         tittle5: "tittle5",
            //         tittle6: index == 0 ? "Rhode Island E" : "Some Location",
            //         tittle7:
            //             index == 0 ? "Rep: Rick Steehier" : "Rep: Jane Doe",
            //         tittle8: index == 0 ? "SS: 10-27-2022" : "SS: 11-30-2022",
            //         tittle9: index == 0 ? "T: Wolfpack, RS" : "T: Team XYZ",
            //         tittle10: index == 0 ? "SS: 10-27-2022" : "SS: 11-30-2022",
            //       );
            //     })),
          ],
        ),
      ),
    );
  }

  Widget cardtittle(String title, String counter) {
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

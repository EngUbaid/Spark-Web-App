import 'dart:async';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:spark/View/drawer%20screen/kanbanbobdy/kanbanbodycard.dart';
import 'package:spark/common/iconchanges.dart';

class TaskWidget extends StatefulWidget {
  final cardanotherdatas task;
  final ValueChanged<cardanotherdatas> onDelete;
  final Key key;

  const TaskWidget({
    required this.task,
    required this.onDelete,
    required this.key,
  });

  @override
  _TaskWidgetState createState() => _TaskWidgetState();
}

class _TaskWidgetState extends State<TaskWidget> {
  bool isAlertDialogShown = false;

  @override
  Widget build(BuildContext context) {
    return Draggable<cardanotherdatas>(
      data: widget.task,
      child: widget.task,
      feedback: Material(
        child: widget.task,
      ),
      childWhenDragging: Container(),
      onDragCompleted: () async {
        // Check if the task should be deleted or not before showing the dialog

        final movetask = await showAlertDialog(context);
        if (movetask != null && movetask) {
          widget.onDelete(widget.task);
        }
      },
    );
  }
}

class CustomColumnWidget extends StatefulWidget {
  final Widget titleWidget;
  final List<cardanotherdatas> tasks;
  final ValueChanged<cardanotherdatas> onDelete;

  CustomColumnWidget({
    required this.titleWidget,
    required this.tasks,
    required this.onDelete,
  });

  @override
  State<CustomColumnWidget> createState() => _CustomColumnWidgetState();
}

class _CustomColumnWidgetState extends State<CustomColumnWidget> {
  bool isAlertDialogShown = false;

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<tableticonchanges>(context);
    var isCollapsed = provider.istabletcolapsed;

    return Column(
      // crossAxisAlignment: CrossAxisAlignment.start,
      // mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.only(left: 5),
          //  width: MediaQuery.of(context).size.width / 5.5,
          width: 250,
          child: widget.titleWidget,
        ),
        Column(
          children: [
            Container(
              padding: EdgeInsets.only(left: 10),

              height: isCollapsed
                  ? MediaQuery.of(context).size.height - 245
                  : MediaQuery.of(context).size.height - 300,
              // width: MediaQuery.of(context).size.width / 5.5,
              width: 250,
              child: DragTarget<cardanotherdatas>(
                onAccept: (data) async {
                  // Check if the task should be added or not before showing the dialog
                  if (!isAlertDialogShown) {
                    isAlertDialogShown = true;

                    final moveTask = await showAlertDialog(context);
                    setState(() {
                      if (moveTask != null && moveTask) {
                        widget.tasks.add(data);
                      }
                    });
                    isAlertDialogShown = false;
                  }
                },
                // onAccept: (data) async {
                //   //  Handle the task being dropped onto this column
                //   final movetask = await showAlertDialog(context);

                //   setState(() {
                //     if (movetask) {
                //       widget.tasks.add(data);
                //     }
                //   });
                // },
                builder: (context, candidateData, rejectedData) {
                  // return ReorderableListView(
                  //   onReorder: (oldIndex, newIndex) {
                  //     setState(() {
                  //       if (oldIndex != newIndex) {
                  //         final task = widget.tasks.removeAt(oldIndex);
                  //         widget.tasks.insert(newIndex, task);
                  //       }
                  //     });
                  //   },
                  //   children: [
                  //     for (var task in widget.tasks)
                  //       TaskWidget(
                  //         key: ValueKey(task),
                  //         task: task,
                  //         onDelete: (deletedTask) {
                  //           setState(() {
                  //             widget.tasks.remove(deletedTask);
                  //           });
                  //         },
                  //       ),
                  //   ],
                  // );

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
}

class TabletKanbanboard extends StatefulWidget {
  const TabletKanbanboard({super.key});

  @override
  State<TabletKanbanboard> createState() => _KanbanboardclassState();
}

class _KanbanboardclassState extends State<TabletKanbanboard> {
  ScrollController controller = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Container(
      // height: MediaQuery.of(context).size.height - 250,
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      child: SingleChildScrollView(
        controller: controller,
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            CustomColumnWidget(
                onDelete: (value) {},
                titleWidget: cardtittle("To do", "24"),
                tasks: List.generate(10, (index) {
                  return cardanotherdatas(
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
                onDelete: (value) {},
                titleWidget: cardtittle("in progress", "24"),
                tasks: List.generate(10, (index) {
                  return cardanotherdatas(
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
            CustomColumnWidget(
                onDelete: (value) {},
                titleWidget: cardtittle("in progress", "24"),
                tasks: []),
            CustomColumnWidget(
                onDelete: (value) {},
                titleWidget: cardtittle("Not Completed", "24"),
                tasks: []),
            CustomColumnWidget(
                onDelete: (value) {},
                titleWidget: cardtittle("To do", "24"),
                tasks: List.generate(10, (index) {
                  return cardanotherdatas(
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

Future showAlertDialog(BuildContext context) async {
  return await showDialog<bool>(
    context: context,
    builder: (BuildContext context) {
      return Container(
        height: 200,
        width: 200,
        child: AlertDialog(
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
        ),
      );
    },
  );
}

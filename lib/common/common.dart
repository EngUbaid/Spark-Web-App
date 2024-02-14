import 'package:flutter/material.dart';

class showcalender extends StatefulWidget {
  final DateTime firstdate;
  final DateTime lastdate;
   showcalender({
    super.key,
    required this.firstdate,
    required this.lastdate,
  });

  @override
  State<showcalender> createState() => _showcalenderState();
}

class _showcalenderState extends State<showcalender> {

  @override
  Widget build(BuildContext context) {
    return showdate();
  }

  showdate() async {
    DateTimeRange? datetimerang = await showDateRangePicker(
      context: context,
      firstDate:widget.firstdate,
      lastDate: widget.lastdate,
      builder: (context, child) {
        return Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 80),
              child: SizedBox(
                height: 500,
                width: 500,
                child: child,
              ),
            ),
          ],
        );
      },
    );
   
  }

  String formatDate(DateTime date) {
    return "${date.day}-${date.month}-${date.year}";
  }
}

 // if (datetimerang != null) {
    //   setState(() {
    //    widget.range = datetimerang;
    //   });
    // }
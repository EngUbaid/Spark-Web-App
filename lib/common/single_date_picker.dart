import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:textfield_datepicker/textfield_datepicker.dart';

class Singledatepicker extends StatefulWidget {
  final String hinttext;
  final Widget icon;
  final bool isfilled;
  const Singledatepicker(
      {Key? key,
      required this.hinttext,
      required this.icon,
      this.isfilled = false});

  @override
  State<Singledatepicker> createState() => _SingledatepickerState();
}

class _SingledatepickerState extends State<Singledatepicker> {
  final TextEditingController datepickercontroler = TextEditingController();
  // final TextfieldDatePickerController datepickercontroler = TextfieldDatePickerController();
  final DateTime materialDatePickerFirstDate = DateTime(2000);
  final DateTime materialDatePickerLastDate = DateTime(2100);
  final DateTime materialDatePickerInitialDate = DateTime.now();
  // final DateFormat  preferredDateFormat = 'yyyy-MM-dd';
  final DateTime cupertinoDatePickerMaximumDate = DateTime(2100);
  final DateTime cupertinoDatePickerMinimumDate = DateTime(2000);
  final Color cupertinoDatePickerBackgroundColor = Colors.white;
  final int cupertinoDatePickerMaximumYear = 2100;
  final DateTime cupertinoDateInitialDateTime = DateTime.now();
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return TextfieldDatePicker(
        decoration: InputDecoration(
            filled: widget.isfilled,
            hintText: widget.hinttext,
            hintStyle: TextStyle(fontSize: 13),
            suffixIcon: widget.icon,
            contentPadding: EdgeInsets.only(top: 5, left: 8, right: 5),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(5))),
        textfieldDatePickerController: datepickercontroler,
        materialDatePickerFirstDate: materialDatePickerFirstDate,
        materialDatePickerLastDate: materialDatePickerLastDate,
        materialDatePickerInitialDate: materialDatePickerInitialDate,
        preferredDateFormat: DateFormat('dd-MMMM-' 'yyyy'),
        cupertinoDatePickerMaximumDate: cupertinoDatePickerMaximumDate,
        cupertinoDatePickerMinimumDate: cupertinoDatePickerMinimumDate,
        cupertinoDatePickerBackgroundColor: cupertinoDatePickerBackgroundColor,
        cupertinoDatePickerMaximumYear: cupertinoDatePickerMaximumYear,
        cupertinoDateInitialDateTime: cupertinoDateInitialDateTime);
  }
}

import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:flutter/material.dart';

class singledropdown extends StatefulWidget {
  final String hinttext;
  final String tittle1;

  final String tittle2;
  final String tittle3;
  final String tittle4;
  final String tittle5;
  const singledropdown({
    super.key,
    required this.hinttext,
    required this.tittle1,
    required this.tittle2,
    required this.tittle3,
    required this.tittle4,
    required this.tittle5,
  });

  @override
  State<singledropdown> createState() => _singledropdownState();
}

class _singledropdownState extends State<singledropdown> {
  final SingleValueDropDownController _cnt = SingleValueDropDownController();
  @override
  Widget build(BuildContext context) {
    return DropDownTextField(
      
      padding: EdgeInsets.only(top: 5, left: 8, right: 8),
      textFieldDecoration: InputDecoration(
          contentPadding: EdgeInsets.only(top: 5, left: 8),
         // filled: true,
          hintText: widget.hinttext,
          hintStyle: TextStyle(fontSize: 13),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(5))),
      //  initialValue: "name4",
      controller: _cnt,
      clearOption: true,
      // enableSearch: true,
      // dropdownColor: Colors.green,
      // searchDecoration: const InputDecoration(hintText: "vaulue"),
      validator: (value) {
        if (value == null) {
          return "Required field";
        } else {
          return null;
        }
      },
      dropDownItemCount: 6,

      dropDownList: [
        DropDownValueModel(name: widget.tittle1, value: widget.tittle1),
        DropDownValueModel(
          name: widget.tittle2,
          value: widget.tittle2,
        ),
        DropDownValueModel(name: widget.tittle3, value: widget.tittle3),
        DropDownValueModel(
          name: widget.tittle4,
          value: widget.tittle4,
        ),
        DropDownValueModel(name: widget.tittle5, value: widget.tittle5),
      ],
      onChanged: (val) {},
    );
  }
}

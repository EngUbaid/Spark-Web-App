import 'package:flutter/material.dart';

class Dropdownsetting extends StatefulWidget {
  const Dropdownsetting({super.key});

  @override
  State<Dropdownsetting> createState() => _DropdownsettingState();
}

class _DropdownsettingState extends State<Dropdownsetting> {
  String? selectedvalue;
  List<String> city = ['Mingora', 'Karachi', "Peshwar"];
  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      value: selectedvalue,
      onChanged: (String? value) {
        setState(() {
          selectedvalue = value;
        });
      },
      items: city.map((String item) {
        return DropdownMenuItem(value: item, child: Text(item));
      }).toList(),
    );
  }
}

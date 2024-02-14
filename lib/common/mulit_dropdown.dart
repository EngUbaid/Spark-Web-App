import 'package:flutter/material.dart';
import 'package:multi_dropdown/multiselect_dropdown.dart';

class Multidropdownstting extends StatefulWidget {
  final String hintext;
  final String tittle1;
  final String tittle2;
  final String tittle3;
  final String tittle4;
  final String tittle5;
  const Multidropdownstting({
    super.key,
    required this.hintext,
    required this.tittle1,
    required this.tittle2,
    required this.tittle3,
    required this.tittle4,
    required this.tittle5,
  });

  @override
  State<Multidropdownstting> createState() => _MultidropdownsttingState();
}

class _MultidropdownsttingState extends State<Multidropdownstting> {
  final MultiSelectController _controller = MultiSelectController();
  @override
  Widget build(BuildContext context) {
    return MultiSelectDropDown(
      inputDecoration:BoxDecoration(
        border: Border.all(),
        borderRadius: BorderRadius.circular(5)
      ),
      hint: widget.hintext,
      hintFontSize: 13,
      showClearIcon: true,
      controller: _controller,
      onOptionSelected: (options) {
        debugPrint(options.toString());
      },
      options: <ValueItem>[
        ValueItem(label: widget.tittle1, value: widget.tittle1),
        ValueItem(label: widget.tittle2, value: widget.tittle2),
        ValueItem(label: widget.tittle3, value: widget.tittle3),
        ValueItem(label: widget.tittle4, value: widget.tittle4),
        ValueItem(label: widget.tittle5, value: widget.tittle5),
      ],
      maxItems: 2,
      selectionType: SelectionType.multi,
      chipConfig: const ChipConfig(wrapType: WrapType.wrap),
      dropdownHeight: 200,
      optionTextStyle: const TextStyle(fontSize: 16),
      selectedOptionIcon: const Icon(Icons.check_circle),
    );
  }
}

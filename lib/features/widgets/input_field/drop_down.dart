import 'package:dr_kevell/core/them/custom_theme_extension.dart';
import 'package:flutter/material.dart';

class DropdownMenuWidget extends StatefulWidget {
  final List<String> item;
  const DropdownMenuWidget({
    super.key,
    required this.item,
  });

  @override
  State<DropdownMenuWidget> createState() => _DropdownMenuWidgetState();
}

class _DropdownMenuWidgetState extends State<DropdownMenuWidget> {
  String dropdownValue = '';
  @override
  void initState() {
    dropdownValue = widget.item.first;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DropdownMenu<String>(
      inputDecorationTheme: InputDecorationTheme(
        hoverColor: context.theme.backround,
        fillColor: context.theme.inputFiled,
        contentPadding: const EdgeInsets.symmetric(horizontal: 15, vertical: 0),
        filled: true,
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(width: 1, color: Color(0xFFEEEEEE))),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(width: 1, color: Color(0xFF232B35)),
          borderRadius: BorderRadius.circular(10),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(width: 1, color: Color(0xFFEB5757)),
          borderRadius: BorderRadius.circular(10),
        ),
        border: OutlineInputBorder(
          borderSide: const BorderSide(width: 1, color: Color(0xFFEEEEEE)),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      menuStyle: MenuStyle(
        elevation: const MaterialStatePropertyAll(1),
        backgroundColor: MaterialStatePropertyAll(context.theme.backround),
        fixedSize:
            const MaterialStatePropertyAll(Size(double.maxFinite, double.nan)),
        surfaceTintColor: MaterialStatePropertyAll(context.theme.backround),
        shadowColor: MaterialStatePropertyAll(context.theme.backround),
        shape: MaterialStatePropertyAll(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
      ),
      initialSelection: widget.item.first,
      onSelected: (String? value) {
        // This is called when the user selects an item.
        setState(() {
          dropdownValue = value!;
        });
      },
      dropdownMenuEntries:
          widget.item.map<DropdownMenuEntry<String>>((String value) {
        return DropdownMenuEntry<String>(value: value, label: value);
      }).toList(),
    );
  }
}

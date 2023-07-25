import 'package:flutter/material.dart';
import 'package:dr_kevell/core/them/custom_theme_extension.dart';

class DropDownFiledWidet extends StatelessWidget {
  final void Function(dynamic)? onChanged;
  final dynamic value;
  final List<DropdownMenuItem> items;
  const DropDownFiledWidet({
    super.key,
    required this.items,
    required this.onChanged,
     this.value,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      items: items,
      onChanged: onChanged,
      style: Theme.of(context).textTheme.titleMedium!.copyWith(
            color: context.theme.textPrimary,
          ),
      value: value,
      decoration: InputDecoration(
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        filled: true,
        fillColor: context.theme.inputFiled,
        enabled: true,
        hintStyle: const TextStyle(color: Colors.black),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(10),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(10),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}

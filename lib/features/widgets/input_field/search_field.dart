import 'package:flutter/material.dart';
import 'package:dr_kevell/core/them/custom_theme_extension.dart';

class SearchField extends StatelessWidget {
  final double? margin;
  const SearchField({super.key, this.margin});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: context.theme.backround,
          boxShadow: [
            BoxShadow(
                blurRadius: 12,
                color: Colors.black.withOpacity(0.1),
                offset: const Offset(4, 4))
          ]),
      height: 55,
      margin: EdgeInsets.symmetric(horizontal: margin ?? 20),
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        children: [
          Expanded(
            child: TextFormField(
              decoration: const InputDecoration(
                contentPadding: EdgeInsets.all(0),
                hintText: "Search for Patients",
                border: InputBorder.none,
              ),
            ),
          ),
          Icon(
            Icons.search,
            color: context.theme.primary,
            size: 30,
          ),
        ],
      ),
    );
  }
}

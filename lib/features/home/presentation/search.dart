import 'package:flutter/material.dart';
import 'package:kevell_care_dr/core/them/custom_theme_extension.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 75,
      child: Stack(
        children: [
          Container(
            width: double.maxFinite,
            height: 20,
            decoration: BoxDecoration(
              color: context.theme.primary,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
            ),
          ),
          Container(
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
            margin: const EdgeInsets.symmetric(horizontal: 20),
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                Expanded(
                  child: TextFormField(
                    decoration: const InputDecoration(
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
          ),
        ],
      ),
    );
  }
}

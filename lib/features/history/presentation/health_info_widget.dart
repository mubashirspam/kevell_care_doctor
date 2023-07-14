import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:dr_kevell/configure/assets_manage/icons.dart';
import 'package:dr_kevell/core/them/custom_theme_extension.dart';
import 'package:dr_kevell/features/widgets/input_field/dropdown_field.dart';
import 'package:dr_kevell/features/widgets/input_field/input_field_widget.dart';

class HealthInfoWidget extends StatelessWidget {
  const HealthInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SizedBox(
        width: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: 50,
                  child: SvgPicture.asset(AppIcons.graphIcon),
                ),
                Text(
                  'Health Info',
                  style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                        fontSize: 20,
                      ),
                ),
              ],
            ),
            const SizedBox(height: 15),
            SizedBox(
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      "From",
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      "To",
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15),
            Row(
              children: [
                Expanded(
                  child: TextFieldWidget(
                    hintText: "01/04/2022",
                    keyboardType: TextInputType.datetime,
                    suffixIcon: Icon(
                      Icons.date_range_rounded,
                      color: context.theme.primary,
                    ),
                    validate: (validate) {
                      return;
                    },
                  ),
                ),
                const SizedBox(width: 15),
                Expanded(
                  child: TextFieldWidget(
                    hintText: "01/04/2022",
                    keyboardType: TextInputType.datetime,
                    suffixIcon: Icon(
                      Icons.date_range_rounded,
                      color: context.theme.primary,
                    ),
                    validate: (validate) {
                      return;
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15),
            DropDownFiledWidet(
                items: List.generate(
                  5,
                  (index) => const DropdownMenuItem(
                    value: 'Body Temperature',
                    child: Text('Body Temperature'),
                  ),
                ),
                onChanged: (onChanged) {}),
          ],
        ),
      ),
    );
  }
}

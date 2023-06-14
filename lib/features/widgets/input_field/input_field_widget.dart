import 'package:flutter/material.dart';
import 'package:kevell_care_dr/core/them/custom_theme_extension.dart';

class TextFieldWidget extends StatelessWidget {
  final TextInputType keyboardType;
  final String hintText;
  final String? initialValue;
  final Widget? prefixIcon;
  final bool? obscureText;
  final TextEditingController? textEditingController;
  final Function(String value)? onChanged;
  final Function(dynamic value)? onSaved;
  final Function()? onTap;
  final String? Function(String?)? validate;
  final AutovalidateMode? autoValidateMode;
  final Widget? prefix;
  final Widget? suffixIcon;
  final String? labelText;
  // final void Function (String value) onSaved;

  const TextFieldWidget({
    super.key,
    this.onTap,
    this.autoValidateMode,
    this.prefixIcon,
    required this.hintText,
    required this.keyboardType,
    this.textEditingController,
    required this.onChanged,
    required this.onSaved,
    required this.validate,
    required this.labelText,
    this.obscureText,
    this.suffixIcon,
    this.prefix,
    this.initialValue,

    // required this.onSaved,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        children: [
          Expanded(
            child: TextFormField(
              initialValue: initialValue,
              style: const TextStyle(
                  // color: AppColor.textPrimeryLight,
                  fontWeight: FontWeight.normal,
                  fontSize: 14),
              obscureText: obscureText ?? false,
              controller: textEditingController,
              autovalidateMode: autoValidateMode,
              onTap: onTap,
              // cursorColor: ,
              keyboardType: keyboardType,
              decoration: InputDecoration(
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                labelText: labelText,
                labelStyle: const TextStyle(
                    color: Color(0xff8F8F8F),
                    fontWeight: FontWeight.normal,
                    fontSize: 12),
                prefix: prefix,
                prefixIcon: prefixIcon,

                suffixIcon: suffixIcon,
                filled: true,
                fillColor: context.theme.inputFiled,
                enabled: true,
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(12),
                ),
                errorBorder: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(12),
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(12),
                ),
                // hintText: hintText,
              ),
              onChanged: onChanged,
              onSaved: onSaved,
              validator: validate,
            ),
          ),
        ],
      ),
    );
  }
}

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
  final int? maxLines;
  // final void Function (String value) onSaved;

  const TextFieldWidget(
      {super.key,
      this.onTap,
      this.autoValidateMode,
      this.prefixIcon,
      required this.hintText,
      required this.keyboardType,
      this.textEditingController,
      this.onChanged,
      this.onSaved,
      required this.validate,
      this.labelText,
      this.obscureText,
      this.suffixIcon,
      this.prefix,
      this.initialValue,
      this.maxLines

      // required this.onSaved,
      });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        children: [
          Expanded(
            child: TextFormField(
              maxLines: maxLines,
              initialValue: initialValue,

              style: TextStyle(
                  color: context.theme.textPrimary,
                  fontWeight: FontWeight.normal,
                  fontSize: 14),
              obscureText: obscureText ?? false,
              controller: textEditingController,
              autovalidateMode: autoValidateMode,
              onTap: onTap,
              // cursorColor: ,
              keyboardType: keyboardType,
              decoration: InputDecoration(
                hintText: hintText,

                hintStyle: TextStyle(color: context.theme.textGrey),
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                labelText: labelText,
                labelStyle: TextStyle(
                    color: context.theme.textPrimary,
                    fontWeight: FontWeight.normal,
                    fontSize: 12),
                prefix: prefix,
                prefixIcon: prefixIcon,

                suffixIcon: suffixIcon,
                filled: true,
                fillColor: context.theme.inputFiled,
                enabled: true,
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

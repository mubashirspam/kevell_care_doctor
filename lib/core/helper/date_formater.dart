
import 'package:flutter/services.dart';

class DateInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    // Get the input text and remove any non-numeric characters
    final inputText = newValue.text.replaceAll(RegExp(r'[^0-9/]'), '');

    // Check if the inputText is not empty and is in the format dd/mm/yyyy
    if (inputText.isNotEmpty && inputText.length <= 10) {
      final buffer = StringBuffer();
      var index = 0;
      for (var i = 0; i < inputText.length; i++) {
        if (i == 2 || i == 5) {
          buffer.write('/');
        }
        buffer.write(inputText[i]);
        index++;
      }

      return TextEditingValue(
        text: buffer.toString(),
        selection: TextSelection.collapsed(offset: index),
      );
    }

    return newValue;
  }
}

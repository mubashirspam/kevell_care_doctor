class DateValidator {
  static String? validateDate(String? date) {
    if (date == null || date.isEmpty) {
      return 'Please enter a valid date (dd/mm/yyyy)';
    }

    const datePattern = r'^\d{2}/\d{2}/\d{4}$';
    final dateRegex = RegExp(datePattern);

    if (!dateRegex.hasMatch(date)) {
      return 'Please enter a valid date (dd/mm/yyyy)';
    }

    final dateSplit = date.split('/');
    final day = int.tryParse(dateSplit[0]);
    final month = int.tryParse(dateSplit[1]);
    final year = int.tryParse(dateSplit[2]);

    if (day == null || month == null || year == null) {
      return 'Please enter a valid date (dd/mm/yyyy)';
    }

    if (day < 1 || day > 31 || month < 1 || month > 12 || year < 1900) {
      return 'Invalid date';
    }

    return null; // Date is valid
  }
}

extension DateTimeExtension on DateTime {
  bool isAfterOrEquals(DateTime other) {
    return isAfter(other) || isAtSameMomentAs(other);
  }

  bool isBeforeOrEquals(DateTime other) {
    return isBefore(other) || isAtSameMomentAs(other);
  }
}

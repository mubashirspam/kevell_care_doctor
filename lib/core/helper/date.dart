import 'package:intl/intl.dart';

String dateFormatToDDmonthYYYY(String date) {
  final inputDate = DateTime.parse(date);
  return DateFormat('dd MMM yyyy').format(inputDate);
}

String dateFormatToYYYYMMdd(DateTime date) {
  return DateFormat('yyyy-MM-dd').format(date);
}

String dateFormatToddmmyyyy(DateTime date) {
  return DateFormat('dd/MM/yyyy').format(date);
}

String formatDateForSchedule(DateTime date) {
  return DateFormat('dd\nMMM').format(date);
}

String extractTime(DateTime timestamp) {
  return DateFormat('HH:mm').format(timestamp);
}

String formatTime(DateTime dateTime) {
  return "${dateTime.hour.toString().padLeft(2, '0')}.${dateTime.minute.toString().padLeft(2, '0')}";
}




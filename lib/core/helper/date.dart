import 'package:intl/intl.dart';

String dateFormatToDDmonthYYYY(String date) {
  final inputDate = DateTime.parse(date);
  return DateFormat('dd MMM yyyy').format(inputDate);
}

String dateFormatToYYYYMMdd(DateTime date) {
  return DateFormat('yyyy-MM-dd').format(date);
}

String dateFormatToMMddyyyEEEE(DateTime date) {
  return DateFormat('MM/dd/yyyy, EEEE').format(date);
}

String dateFormatToMMddyy(DateTime date) {
  return DateFormat('MM/dd/yyyy,').format(date);
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

String dateFormatToYYYYMMddWithDay(DateTime inputDate) {
  return DateFormat("dd/MM/yyyy, EEEE").format(inputDate);
}

String covertToTime(DateTime inputDate) {
  return DateFormat('HH:mm:ss.SSS').format(inputDate);
}

int calculateAge(DateTime birthdate) {
  DateTime currentDate = DateTime.now();
  int age = currentDate.year - birthdate.year;

  if (currentDate.month < birthdate.month ||
      (currentDate.month == birthdate.month &&
          currentDate.day < birthdate.day)) {
    age--;
  }

  return age;
}

import 'package:intl/intl.dart';

String dateFormatToDDmonthYYYY(String date) {
  final outputFormat = DateFormat('dd MMM yyyy');
  final inputDate = DateTime.parse(date);
  return outputFormat.format(inputDate);
}

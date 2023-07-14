import 'package:intl/intl.dart';

String dateFormatToDDmonthYYYY(String date) {
 
  final inputDate = DateTime.parse(date);
  return DateFormat('dd MMM yyyy').format(inputDate);
}

String dateFormatToYYYYMMdd(DateTime date) {
  return DateFormat('yyyy-MM-dd').format(date);
}


String dateFormatToddmmyyyy(DateTime date) {

   
  return  DateFormat('dd/MM/yyyy').format(date);
}




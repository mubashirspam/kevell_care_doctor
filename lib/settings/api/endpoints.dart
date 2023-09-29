import '../value/constant.dart';

class ApiEndPoints {
  static const String login = "$baseUrl/patient/api/Login";
  static const String register = "$baseUrl/doctor/api/register";
  static const String getprofile =
      "$baseUrl/doctor/api/getUserdetailsByIdAndEmail";

  static const String updateProfile = "$baseUrl/doctor/api/profile";

  static const String uploadImage = "$baseUrl/doctor/api/profile";

  static const String homeStatus = "$baseUrl/register/api/doctorcountlist";

  static const String homeWaitingPatient =
      "$baseUrl/register/api/todayWaitingHallPatientsdetails";

  static const String patientHistoryList =
      "$baseUrl/appointment/api/VisitedPatientReportdata";

  static const String getPrescription = "$baseUrl/users/api/medicinedata";

  static const String createPrescription =
      "$baseUrl/users/api/saveAndupdatemedicinedata";

  static const String updatePrescription =
      "$baseUrl/users/api/saveAndupdatemedicinedata";

  static const String getPrescriptionSettings =
      "$baseUrl/users/api/getdprescriptiontable";

  static const String deletePrescription =
      "$baseUrl/users/api/deletemedicinedata";

  static const String getSchedule = "$baseUrl/doctor/api/getdoctorschedule";

  static const String createSchedule =
      "$baseUrl/doctor/api/createdoctorschedule";

  static const String updateSchedule =
      "$baseUrl/doctor/api/updatedoctorSchedule";

  static const String deleteSchedule =
      "$baseUrl/doctor/api/deletedoctorschedule";

  static const String patientreportgeneralinfo =
      "$baseUrl/doctor/api/patientreportgeneralinfo";

  static const String patientreport =
      "$baseUrl/doctor/api/ViewPatientReport_new";

  static const String endAppoinment = "$baseUrl/doctor/api/Finishtheappoinment";

  static const String fetchChatProfile =
      "https://9cc2-2409-4072-8d9e-ab69-c99f-541-c1ed-399a.ngrok-free.app/chat/api/getallusers";

  static const websocketUrl =
      "https://174c-2409-4072-6e19-43fd-b14c-3e77-71ae-8f08.ngrok-free.app/videocall";
}

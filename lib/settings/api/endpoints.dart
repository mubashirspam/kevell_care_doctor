import '../value/constant.dart';

const baseUrl = "https://kevelldigital.com"; //development
// const baseUrl = "https://8c05-183-82-33-226.ngrok-free.app"; //developmen

class V2 {
  // AUTH & USER

  static const register = "$baseUrl/$service/register";
  static const login = "$baseUrl/$service/login";
  static const fetchProfile = "$baseUrl/$service/users/details";

  // SCHEDULE

  static const schedule = "$baseUrl/$service/schedule";

  static const endAppoinment = "$baseUrl/$service/finished-appoinment";
  static const prescription = "$baseUrl/$service/medicinedata";

  static const history = "$baseUrl/$service/visited-patient-reportdata";

  static const report = "$baseUrl/$service/view-patient-report";
  static const generalReport = "$baseUrl/$service/patient-report-general-info";
    static const chat = "$baseUrl/videochat/chat/api/getallusers";



}

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



  static const String updatePrescription =
      "$baseUrl/users/api/saveAndupdatemedicinedata";

  static const String getPrescriptionSettings =
      "$baseUrl/users/api/getdprescriptiontable";

  static const String deletePrescription =
      "$baseUrl/users/api/deletemedicinedata";



  static const websocketUrl =
      "https://kevelldigital.com/videochat?type=videocall&callerId=";

  static const chatWebsocketUrl =
      "https://kevelldigital.com/videochat?type=chat";

}

class HomeWaitingPatientModel {
  int? responseCode;
  bool? status;
  String? message;
  List<Datum>? data;

  HomeWaitingPatientModel({
    this.responseCode,
    this.status,
    this.message,
    this.data,
  });

  HomeWaitingPatientModel copyWith({
    int? responseCode,
    bool? status,
    String? message,
    List<Datum>? data,
  }) =>
      HomeWaitingPatientModel(
        responseCode: responseCode ?? this.responseCode,
        status: status ?? this.status,
        message: message ?? this.message,
        data: data ?? this.data,
      );

  factory HomeWaitingPatientModel.fromJson(Map<String, dynamic> json) =>
      HomeWaitingPatientModel(
        responseCode: json["responseCode"],
        status: json["status"],
        message: json["message"],
        data: json["data"] == null
            ? []
            : List<Datum>.from(json["data"]!.map((x) => Datum.fromJson(x))),
      );
}

class Datum {
  int? id;
  int? doctorId;
  DateTime? startDate;
  DateTime? endDate;
  int? dailyLimitCount;
  DateTime? days;
  DateTime? startTime;
  DateTime? endTime;
  int? timePerPatient;
  List<WaitingPatient>? bookedappointmentdetails;
  int? bookedTokenCount;

  Datum({
    this.id,
    this.doctorId,
    this.startDate,
    this.endDate,
    this.dailyLimitCount,
    this.days,
    this.startTime,
    this.endTime,
    this.timePerPatient,
    this.bookedappointmentdetails,
    this.bookedTokenCount,
  });

  Datum copyWith({
    int? id,
    int? doctorId,
    DateTime? startDate,
    DateTime? endDate,
    int? dailyLimitCount,
    DateTime? days,
    DateTime? startTime,
    DateTime? endTime,
    int? timePerPatient,
    List<WaitingPatient>? bookedappointmentdetails,
    int? bookedTokenCount,
  }) =>
      Datum(
        id: id ?? this.id,
        doctorId: doctorId ?? this.doctorId,
        startDate: startDate ?? this.startDate,
        endDate: endDate ?? this.endDate,
        dailyLimitCount: dailyLimitCount ?? this.dailyLimitCount,
        days: days ?? this.days,
        startTime: startTime ?? this.startTime,
        endTime: endTime ?? this.endTime,
        timePerPatient: timePerPatient ?? this.timePerPatient,
        bookedappointmentdetails:
            bookedappointmentdetails ?? this.bookedappointmentdetails,
        bookedTokenCount: bookedTokenCount ?? this.bookedTokenCount,
      );

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["_id"],
        doctorId: json["doctor_id"],
        startDate: json["start_date"] == null
            ? null
            : DateTime.parse(json["start_date"]),
        endDate:
            json["end_date"] == null ? null : DateTime.parse(json["end_date"]),
        dailyLimitCount: json["daily_limit_count"],
        days: json["days"] == null ? null : DateTime.parse(json["days"]),
        startTime: json["start_time"] == null
            ? null
            : DateTime.parse(json["start_time"]),
        endTime:
            json["end_time"] == null ? null : DateTime.parse(json["end_time"]),
        timePerPatient: json["time_per_patient"],
        bookedappointmentdetails: json["bookedappointmentdetails"] == null
            ? []
            : List<WaitingPatient>.from(json["bookedappointmentdetails"]!
                .map((x) => WaitingPatient.fromJson(x))),
        bookedTokenCount: json["booked_token_count"],
      );
}

class WaitingPatient {
  int? id;
  int? patientId;
  String? patientname;
  DateTime? appointmentStarttime;
  DateTime? appointmentEndtime;
  DateTime? appointmentDate;
  int? apptToken;
  String? profileImagelink;

  WaitingPatient({
    this.id,
    this.patientId,
    this.patientname,
    this.appointmentStarttime,
    this.appointmentEndtime,
    this.appointmentDate,
    this.apptToken,
    this.profileImagelink,
  });

  WaitingPatient copyWith({
    int? id,
    int? patientId,
    String? patientname,
    DateTime? appointmentStarttime,
    DateTime? appointmentEndtime,
    DateTime? appointmentDate,
    int? apptToken,
    String? profileImagelink,
  }) =>
      WaitingPatient(
        id: id ?? this.id,
        patientId: patientId ?? this.patientId,
        patientname: patientname ?? this.patientname,
        appointmentStarttime: appointmentStarttime ?? this.appointmentStarttime,
        appointmentEndtime: appointmentEndtime ?? this.appointmentEndtime,
        appointmentDate: appointmentDate ?? this.appointmentDate,
        apptToken: apptToken ?? this.apptToken,
        profileImagelink: profileImagelink ?? this.profileImagelink,
      );

  factory WaitingPatient.fromJson(Map<String, dynamic> json) => WaitingPatient(
        id: json["_id"],
        patientId: json["patient_id"],
        patientname: json["patientname"],
        appointmentStarttime: json["appointment_starttime"] == null
            ? null
            : DateTime.parse(json["appointment_starttime"]),
        appointmentEndtime: json["appointment_endtime"] == null
            ? null
            : DateTime.parse(json["appointment_endtime"]),
        appointmentDate: json["appointment_date"] == null
            ? null
            : DateTime.parse(json["appointment_date"]),
        apptToken: json["appt_token"],
        profileImagelink: json["ProfileImagelink"],
      );
}

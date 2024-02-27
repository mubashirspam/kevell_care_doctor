class ReportModel {
  int? responseCode;
  bool? status;
  String? message;
  List<Datum>? data;
  DateTime? startdate;

  ReportModel(
      {this.responseCode,
      this.status,
      this.message,
      this.data,
      this.startdate});

  factory ReportModel.fromJson(Map<String, dynamic> json) => ReportModel(
        responseCode: json["responseCode"],
        status: json["status"],
        message: json["message"],
        startdate: json["startdate"] == null
            ? null
            : DateTime.parse(json["startdate"]),
        data: json["data"] == null
            ? []
            : List<Datum>.from(json["data"]!.map((x) => Datum.fromJson(x))),
      );
}

class Datum {
  int? id;
  int? patientId;
  int? scheduleId;
  String? patientPid;
  String? patientname;
  String? patientMail;
  String? patientMobile;
  DateTime? appointmentStarttime;
  DateTime? appointmentEndtime;
  int? doctorId;
  String? doctorname;
  String? doctorImage;
  DateTime? appointmentDate;
  List<dynamic>? preexistingDisease;
  bool? isvisited;
  bool? isTimeup;
  String? date;
  int? userDoctorrating;
  String? userDoctorcommand;
  String? patientPdflink;
  EcgInfo? ecgInfo;

  List<ReportPrescription>? prescription;
  bool? notifyStatus;
  bool? isCancelled;
  bool? isDeleted;
  int? apptToken;
  String? bookingStatus;
  DateTime? createdAt;
  DateTime? updatedAt;
  int? v;
  int? sno;
  Info? temperatureInfo;
  DateTime? isvisiteddate;
  SpO2Info? spO2Info;
  BpInfo? bpInfo;
  Info? glucometerInfo;
  Patient? patient;
  Doctor? doctor;
  String? hospitalname;
  String? remark;


  Datum({
    this.id,
    this.patientId,
    this.scheduleId,
    this.patientPid,
    this.patientname,
    this.patientMail,
    this.patientMobile,
    this.appointmentStarttime,
    this.appointmentEndtime,
    this.doctorId,
    this.doctorname,
    this.doctorImage,
    this.appointmentDate,
    this.preexistingDisease,
    this.isvisited,
    this.isTimeup,
    this.date,
    this.userDoctorrating,
    this.userDoctorcommand,
    this.patientPdflink,
    this.ecgInfo,
    this.prescription,
    this.notifyStatus,
    this.isCancelled,
    this.isDeleted,
    this.apptToken,
    this.bookingStatus,
    this.createdAt,
    this.updatedAt,
    this.v,
    this.sno,
    this.temperatureInfo,
    this.isvisiteddate,
    this.spO2Info,
    this.bpInfo,
    this.glucometerInfo,
    this.patient,
    this.doctor,
    this.hospitalname,
    this.remark,

  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["_id"],
        patientId: json["patient_id"],
        scheduleId: json["schedule_id"],
        patientPid: json["patient_pid"],
        patientname: json["patientname"],
        patientMail: json["patient_mail"],
        patientMobile: json["patient_mobile"],
        appointmentStarttime: json["appointment_starttime"] == null
            ? null
            : DateTime.parse(json["appointment_starttime"]),
        appointmentEndtime: json["appointment_endtime"] == null
            ? null
            : DateTime.parse(json["appointment_endtime"]),
        doctorId: json["doctor_id"],
        doctorname: json["doctorname"],
        doctorImage: json["doctor_image"],
        appointmentDate: json["appointment_date"] == null
            ? null
            : DateTime.parse(json["appointment_date"]),
        preexistingDisease: json["preexisting_disease"] == null
            ? []
            : List<dynamic>.from(json["preexisting_disease"]!.map((x) => x)),
        isvisited: json["isvisited"],
        isTimeup: json["is_timeup"],
        date: json["date"],
        userDoctorrating: json["user_doctorrating"],
        userDoctorcommand: json["user_doctorcommand"],
        patientPdflink: json["patient_pdflink"],
        ecgInfo: json["ecg_info"] == null ||
                json["ecg_info"] == [] ||
                json["ecg_info"] is List
            ? null
            : EcgInfo.fromJson(json["ecg_info"]),
        prescription: json["prescription"] == null
            ? []
            : List<ReportPrescription>.from(json["prescription"]!
                .map((x) => ReportPrescription.fromJson(x))),
        notifyStatus: json["notify_status"],
        isCancelled: json["is_cancelled"],
        isDeleted: json["is_deleted"],
        apptToken: json["appt_token"],
        bookingStatus: json["booking_status"],
        createdAt: json["createdAt"] == null
            ? null
            : DateTime.parse(json["createdAt"]),
        updatedAt: json["updatedAt"] == null
            ? null
            : DateTime.parse(json["updatedAt"]),
        v: json["__v"],
        sno: json["sno"],
        temperatureInfo: json["temperature_info"] == null
            ? null
            : Info.fromJson(json["temperature_info"]),
        isvisiteddate: json["isvisiteddate"] == null
            ? null
            : DateTime.parse(json["isvisiteddate"]),
        spO2Info: json["spO2_info"] == null
            ? null
            : SpO2Info.fromJson(json["spO2_info"]),
        bpInfo:
            json["bp_info"] == null ? null : BpInfo.fromJson(json["bp_info"]),
        glucometerInfo: json["glucometer_info"] == null
            ? null
            : Info.fromJson(json["glucometer_info"]),
        patient:
            json["patient"] == null ? null : Patient.fromJson(json["patient"]),
        doctor: json["doctor"] == null ? null : Doctor.fromJson(json["doctor"]),
        hospitalname: json["hospitalname"],
        remark: json["remark"],
       
      );
}

class BodyfatInfo {
  BodyfatInfo();

  factory BodyfatInfo.fromJson(Map<String, dynamic> json) => BodyfatInfo();
}

class BpInfo {
  String? id;
  String? patientId;
  String? appointmentId;
  String? doctorId;
  String? type;
  String? state;
  DateTime? date;
  String? number;
  BpInfoData? data;

  BpInfo({
    this.id,
    this.patientId,
    this.appointmentId,
    this.doctorId,
    this.type,
    this.state,
    this.date,
    this.number,
    this.data,
  });

  factory BpInfo.fromJson(Map<String, dynamic> json) => BpInfo(
        id: json["id"],
        patientId: json["patient_id"],
        appointmentId: json["appointment_id"],
        doctorId: json["doctor_id"],
        type: json["type"],
        state: json["state"],
        date: json["date"] == null ? null : DateTime.parse(json["date"]),
        number: json["number"],
        data: json["data"] == null ? null : BpInfoData.fromJson(json["data"]),
      );
}

class BpInfoData {
  String? type;
  String? battery;
  String? bpsysValue;
  String? bpDiaValue;
  String? bpPulseValue;
  bool? bpIrregular;
  bool? bpRest;
  bool? bpAfib;
  DateTime? timeRecord;

  BpInfoData({
    this.type,
    this.battery,
    this.bpsysValue,
    this.bpDiaValue,
    this.bpPulseValue,
    this.bpIrregular,
    this.bpRest,
    this.bpAfib,
    this.timeRecord,
  });

  factory BpInfoData.fromJson(Map<String, dynamic> json) => BpInfoData(
        type: json["type"],
        battery: json["battery"],
        bpsysValue: json["BpsysValue"],
        bpDiaValue: json["BpDiaValue"],
        bpPulseValue: json["BpPulseValue"],
        bpIrregular: json["bpIrregular"],
        bpRest: json["BpRest"],
        bpAfib: json["BpAfib"],
        timeRecord: json["time_record"] == null
            ? null
            : DateTime.parse(json["time_record"]),
      );
}

class Doctor {
  int? id;
  String? emailId;
  String? mobileNo;
  DateTime? dob;
  Address? address;
  String? specialist;
  String? location;
  String? profileImagelink;
  String? signatureImage;

  Doctor({
    this.id,
    this.emailId,
    this.mobileNo,
    this.dob,
    this.address,
    this.specialist,
    this.location,
    this.profileImagelink,
    this.signatureImage,
  });

  factory Doctor.fromJson(Map<String, dynamic> json) => Doctor(
        id: json["_id"],
        emailId: json["email_id"],
        mobileNo: json["mobile_no"],
        dob: json["dob"] == null ? null : DateTime.parse(json["dob"]),
        address:
            json["address"] == null ? null : Address.fromJson(json["address"]),
        specialist: json["specialist"],
        location: json["location"],
        profileImagelink: json["profile_imagelink"],
        signatureImage: json["signature_image"],
      );
}

class Address {
  String? street;
  String? city;
  String? state;
  String? district;
  String? zipcode;

  Address({
    this.street,
    this.city,
    this.state,
    this.district,
    this.zipcode,
  });

  factory Address.fromJson(Map<String, dynamic> json) => Address(
        street: json["street"],
        city: json["city"],
        state: json["state"],
        district: json["district"],
        zipcode: json["zipcode"],
      );
}

class EcgInfo {
  String? id;
  String? patientId;
  String? appointmentId;
  String? doctorId;
  String? type;
  String? state;
  DateTime? date;
  String? number;
  EcgInfoData? data;

  EcgInfo({
    this.id,
    this.patientId,
    this.appointmentId,
    this.doctorId,
    this.type,
    this.state,
    this.date,
    this.number,
    this.data,
  });

  factory EcgInfo.fromJson(Map<String, dynamic> json) => EcgInfo(
        id: json["id"],
        patientId: json["patient_id"],
        appointmentId: json["appointment_id"],
        doctorId: json["doctor_id"],
        type: json["type"],
        state: json["state"],
        date: json["date"] == null ? null : DateTime.parse(json["date"]),
        number: json["number"],
        data: json["data"] == null ? null : EcgInfoData.fromJson(json["data"]),
      );
}

class EcgInfoData {
  String? type;
  String? battery;
  String? content;
  String? time;
  int? dataLen;
  double? timeInterval;
  String? pulse;
  String? rr;
  String? status;
  String? timeRecord;

  EcgInfoData({
    this.type,
    this.battery,
    this.content,
    this.time,
    this.dataLen,
    this.timeInterval,
    this.pulse,
    this.rr,
    this.status,
    this.timeRecord,
  });

  factory EcgInfoData.fromJson(Map<String, dynamic> json) => EcgInfoData(
        type: json["type"],
        battery: json["battery"],
        content: json["content"],
        time: json["time"],
        dataLen: json["data_len"],
        timeInterval: json["time_interval"]?.toDouble(),
        pulse: json["pulse"],
        rr: json["rr"],
        status: json["status"],
        timeRecord: json["time_record"],
      );
}

class Info {
  String? id;
  String? patientId;
  String? appointmentId;
  String? doctorId;
  String? type;
  String? state;
  DateTime? date;
  String? number;
  GlucometerInfoData? data;

  Info({
    this.id,
    this.patientId,
    this.appointmentId,
    this.doctorId,
    this.type,
    this.state,
    this.date,
    this.number,
    this.data,
  });

  factory Info.fromJson(Map<String, dynamic> json) => Info(
        id: json["id"],
        patientId: json["patient_id"],
        appointmentId: json["appointment_id"],
        doctorId: json["doctor_id"],
        type: json["type"],
        state: json["state"],
        date: json["date"] == null ? null : DateTime.parse(json["date"]),
        number: json["number"],
        data: json["data"] == null
            ? null
            : GlucometerInfoData.fromJson(json["data"]),
      );
}

class GlucometerInfoData {
  String? type;
  String? content;
  String? status;

  GlucometerInfoData({
    this.type,
    this.content,
    this.status,
  });

  factory GlucometerInfoData.fromJson(Map<String, dynamic> json) =>
      GlucometerInfoData(
        type: json["type"],
        content: json["content"],
        status: json["status"],
      );
}

class Patient {
  int? id;
  String? profileImagelink;
  String? name;
  String? mobileNo;
  String? gender;
  DateTime? dob;

  Patient({
    this.id,
    this.profileImagelink,
    this.name,
    this.mobileNo,
    this.gender,
    this.dob,
  });

  factory Patient.fromJson(Map<String, dynamic> json) => Patient(
        id: json["_id"],
        profileImagelink: json["profile_imagelink"],
        name: json["name"],
        mobileNo: json["mobile_no"],
        gender: json["gender"],
        dob: json["dob"] == null ? null : DateTime.parse(json["dob"]),
      );
}

class ReportPrescription {
  String? name;
  String? type;
  String? duration;
  Timeoftheday? timeoftheday;
  List<Tobetaken>? tobetaken;
  dynamic remarks;

  ReportPrescription({
    this.name,
    this.type,
    this.duration,
    this.timeoftheday,
    this.tobetaken,
    this.remarks,
  });

  factory ReportPrescription.fromJson(Map<String, dynamic> json) =>
      ReportPrescription(
        name: json["name"],
        type: json["type"],
        duration: json["duration"],
        timeoftheday: json["timeoftheday"] == null
            ? null
            : Timeoftheday.fromJson(json["timeoftheday"]),
        tobetaken: json["tobetaken"] == null
            ? []
            : List<Tobetaken>.from(
                json["tobetaken"]!.map((x) => Tobetaken.fromJson(x))),
        remarks: json["remarks"],
      );
}

class Timeoftheday {
  String? morning;
  String? evening;
  String? noon;
  String? night;

  Timeoftheday({
    this.morning,
    this.evening,
    this.noon,
    this.night,
  });

  factory Timeoftheday.fromJson(Map<String, dynamic> json) => Timeoftheday(
        morning: json["morning"],
        evening: json["evening"],
        noon: json["noon"],
        night: json["night"],
      );
}

class Tobetaken {
  String? name;
  bool? value;

  Tobetaken({
    this.name,
    this.value,
  });

  factory Tobetaken.fromJson(Map<String, dynamic> json) => Tobetaken(
        name: json["name"],
        value: json["value"],
      );
}

class SpO2Info {
  String? id;
  String? patientId;
  String? appointmentId;
  String? doctorId;
  String? type;
  String? state;
  DateTime? date;
  String? number;
  SpO2InfoData? data;

  SpO2Info({
    this.id,
    this.patientId,
    this.appointmentId,
    this.doctorId,
    this.type,
    this.state,
    this.date,
    this.number,
    this.data,
  });

  factory SpO2Info.fromJson(Map<String, dynamic> json) => SpO2Info(
        id: json["id"],
        patientId: json["patient_id"],
        appointmentId: json["appointment_id"],
        doctorId: json["doctor_id"],
        type: json["type"],
        state: json["state"],
        date: json["date"] == null ? null : DateTime.parse(json["date"]),
        number: json["number"],
        data: json["data"] == null ? null : SpO2InfoData.fromJson(json["data"]),
      );
}

class SpO2InfoData {
  String? type;
  String? content;
  String? spo2;
  String? heartRate;
  String? status;

  SpO2InfoData({
    this.type,
    this.content,
    this.spo2,
    this.heartRate,
    this.status,
  });

  factory SpO2InfoData.fromJson(Map<String, dynamic> json) => SpO2InfoData(
        type: json["type"],
        content: json["content"],
        spo2: json["spo2"],
        heartRate: json["heart_rate"],
        status: json["status"],
      );
}

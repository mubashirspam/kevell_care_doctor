// To parse this JSON data, do
//
//     final endAppoinmentModel = endAppoinmentModelFromJson(jsonString);

import 'dart:convert';

EndAppoinmentModel endAppoinmentModelFromJson(String str) => EndAppoinmentModel.fromJson(json.decode(str));

String endAppoinmentModelToJson(EndAppoinmentModel data) => json.encode(data.toJson());

class EndAppoinmentModel {
    int? responseCode;
    bool? status;
    String? message;
    Data? data;

    EndAppoinmentModel({
        this.responseCode,
        this.status,
        this.message,
        this.data,
    });

    factory EndAppoinmentModel.fromJson(Map<String, dynamic> json) => EndAppoinmentModel(
        responseCode: json["responseCode"],
        status: json["status"],
        message: json["message"],
        data: json["data"] == null ? null : Data.fromJson(json["data"]),
    );

    Map<String, dynamic> toJson() => {
        "responseCode": responseCode,
        "status": status,
        "message": message,
        "data": data?.toJson(),
    };
}

class Data {
    int? id;
    int? patientId;
    String? patientname;
    DateTime? appointmentStarttime;
    DateTime? appointmentEndtime;
    int? doctorId;
    String? doctorname;
    DateTime? appointmentDate;
    String? date;
    String? userDoctorcommand;
    int? userDoctorrating;
    DateTime? createdAt;
    DateTime? updatedAt;
    int? sno;
    int? v;
    List<dynamic>? prescription;
    bool? isTimeup;
    bool? isvisited;
    CheckupResult? checkupResult;

    Data({
        this.id,
        this.patientId,
        this.patientname,
        this.appointmentStarttime,
        this.appointmentEndtime,
        this.doctorId,
        this.doctorname,
        this.appointmentDate,
        this.date,
        this.userDoctorcommand,
        this.userDoctorrating,
        this.createdAt,
        this.updatedAt,
        this.sno,
        this.v,
        this.prescription,
        this.isTimeup,
        this.isvisited,
        this.checkupResult,
    });

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: json["_id"],
        patientId: json["patient_id"],
        patientname: json["patientname"],
        appointmentStarttime: json["appointment_starttime"] == null ? null : DateTime.parse(json["appointment_starttime"]),
        appointmentEndtime: json["appointment_endtime"] == null ? null : DateTime.parse(json["appointment_endtime"]),
        doctorId: json["doctor_id"],
        doctorname: json["doctorname"],
        appointmentDate: json["appointment_date"] == null ? null : DateTime.parse(json["appointment_date"]),
        date: json["date"],
        userDoctorcommand: json["user_doctorcommand"],
        userDoctorrating: json["user_doctorrating"],
        createdAt: json["createdAt"] == null ? null : DateTime.parse(json["createdAt"]),
        updatedAt: json["updatedAt"] == null ? null : DateTime.parse(json["updatedAt"]),
        sno: json["sno"],
        v: json["__v"],
        prescription: json["prescription"] == null ? [] : List<dynamic>.from(json["prescription"]!.map((x) => x)),
        isTimeup: json["is_timeup"],
        isvisited: json["isvisited"],
        checkupResult: json["Checkup_result"] == null ? null : CheckupResult.fromJson(json["Checkup_result"]),
    );

    Map<String, dynamic> toJson() => {
        "_id": id,
        "patient_id": patientId,
        "patientname": patientname,
        "appointment_starttime": appointmentStarttime?.toIso8601String(),
        "appointment_endtime": appointmentEndtime?.toIso8601String(),
        "doctor_id": doctorId,
        "doctorname": doctorname,
        "appointment_date": "${appointmentDate!.year.toString().padLeft(4, '0')}-${appointmentDate!.month.toString().padLeft(2, '0')}-${appointmentDate!.day.toString().padLeft(2, '0')}",
        "date": date,
        "user_doctorcommand": userDoctorcommand,
        "user_doctorrating": userDoctorrating,
        "createdAt": createdAt?.toIso8601String(),
        "updatedAt": updatedAt?.toIso8601String(),
        "sno": sno,
        "__v": v,
        "prescription": prescription == null ? [] : List<dynamic>.from(prescription!.map((x) => x)),
        "is_timeup": isTimeup,
        "isvisited": isvisited,
        "Checkup_result": checkupResult?.toJson(),
    };
}

class CheckupResult {
    String? bodyTemp;
    String? spO2;
    String? heartRate;
    Bp? bp;
    String? glucose;
    String? ecg;

    CheckupResult({
        this.bodyTemp,
        this.spO2,
        this.heartRate,
        this.bp,
        this.glucose,
        this.ecg,
    });

    factory CheckupResult.fromJson(Map<String, dynamic> json) => CheckupResult(
        bodyTemp: json["Body_temp"],
        spO2: json["SpO2"],
        heartRate: json["Heart_Rate"],
        bp: json["Bp"] == null ? null : Bp.fromJson(json["Bp"]),
        glucose: json["Glucose"],
        ecg: json["ECG"],
    );

    Map<String, dynamic> toJson() => {
        "Body_temp": bodyTemp,
        "SpO2": spO2,
        "Heart_Rate": heartRate,
        "Bp": bp?.toJson(),
        "Glucose": glucose,
        "ECG": ecg,
    };
}

class Bp {
    String? type;
    String? battery;
    String? bpsysValue;
    String? bpDiaValue;
    String? bpPulseValue;
    bool? bpIrregular;
    bool? bpRest;
    bool? bpAfib;
    DateTime? timeRecord;

    Bp({
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

    factory Bp.fromJson(Map<String, dynamic> json) => Bp(
        type: json["type"],
        battery: json["battery"],
        bpsysValue: json["BpsysValue"],
        bpDiaValue: json["BpDiaValue"],
        bpPulseValue: json["BpPulseValue"],
        bpIrregular: json["bpIrregular"],
        bpRest: json["BpRest"],
        bpAfib: json["BpAfib"],
        timeRecord: json["time_record"] == null ? null : DateTime.parse(json["time_record"]),
    );

    Map<String, dynamic> toJson() => {
        "type": type,
        "battery": battery,
        "BpsysValue": bpsysValue,
        "BpDiaValue": bpDiaValue,
        "BpPulseValue": bpPulseValue,
        "bpIrregular": bpIrregular,
        "BpRest": bpRest,
        "BpAfib": bpAfib,
        "time_record": timeRecord?.toIso8601String(),
    };
}

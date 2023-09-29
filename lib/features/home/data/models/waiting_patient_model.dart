// To parse this JSON data, do
//
//     final homeWaitingPatientModel = homeWaitingPatientModelFromJson(jsonString);

import 'dart:convert';

HomeWaitingPatientModel homeWaitingPatientModelFromJson(String str) => HomeWaitingPatientModel.fromJson(json.decode(str));

String homeWaitingPatientModelToJson(HomeWaitingPatientModel data) => json.encode(data.toJson());

class HomeWaitingPatientModel {
    int? responseCode;
    bool? status;
    String? message;
    Data? data;

    HomeWaitingPatientModel({
        this.responseCode,
        this.status,
        this.message,
        this.data,
    });

    factory HomeWaitingPatientModel.fromJson(Map<String, dynamic> json) => HomeWaitingPatientModel(
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
    int? totalCount;
    List<WaitingPatient>? waitingPatients;

    Data({
        this.totalCount,
        this.waitingPatients,
    });

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        totalCount: json["totalCount"],
        waitingPatients: json["waiting_patients"] == null ? [] : List<WaitingPatient>.from(json["waiting_patients"]!.map((x) => WaitingPatient.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "totalCount": totalCount,
        "waiting_patients": waitingPatients == null ? [] : List<dynamic>.from(waitingPatients!.map((x) => x.toJson())),
    };
}

class WaitingPatient {
    int? patientId;
    String? profileImagelink;
    DateTime? appointmentstarttime;
    DateTime? appointmentendtime;
    int? doctorId;
    int? appointmentId;
    String? name;
    String? type;
    bool? isvisited;
    bool? isTimeup;
    DateTime? createdAt;
    DateTime? updatedAt;
    int? v;

    WaitingPatient({
        this.patientId,
        this.profileImagelink,
        this.appointmentstarttime,
        this.appointmentendtime,
        this.doctorId,
        this.appointmentId,
        this.name,
        this.type,
        this.isvisited,
        this.isTimeup,
        this.createdAt,
        this.updatedAt,
        this.v,
    });

    factory WaitingPatient.fromJson(Map<String, dynamic> json) => WaitingPatient(
        patientId: json["patient_id"],
        profileImagelink: json["ProfileImagelink"],
        appointmentstarttime: json["appointmentstarttime"] == null ? null : DateTime.parse(json["appointmentstarttime"]),
        appointmentendtime: json["appointmentendtime"] == null ? null : DateTime.parse(json["appointmentendtime"]),
        doctorId: json["doctor_id"],
        appointmentId: json["appointment_id"],
        name: json["name"],
        type: json["type"],
        isvisited: json["isvisited"],
        isTimeup: json["is_timeup"],
        createdAt: json["createdAt"] == null ? null : DateTime.parse(json["createdAt"]),
        updatedAt: json["updatedAt"] == null ? null : DateTime.parse(json["updatedAt"]),
        v: json[" __v"],
    );

    Map<String, dynamic> toJson() => {
        "patient_id": patientId,
        "ProfileImagelink": profileImagelink,
        "appointmentstarttime": appointmentstarttime?.toIso8601String(),
        "appointmentendtime": appointmentendtime?.toIso8601String(),
        "doctor_id": doctorId,
        "appointment_id": appointmentId,
        "name": name,
        "type": type,
        "isvisited": isvisited,
        "is_timeup": isTimeup,
        "createdAt": createdAt?.toIso8601String(),
        "updatedAt": updatedAt?.toIso8601String(),
        " __v": v,
    };
}

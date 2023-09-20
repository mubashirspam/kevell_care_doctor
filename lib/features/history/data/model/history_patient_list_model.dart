// To parse this JSON data, do
//
//     final historyPatientListModel = historyPatientListModelFromJson(jsonString);

import 'dart:convert';

HistoryPatientListModel historyPatientListModelFromJson(String str) => HistoryPatientListModel.fromJson(json.decode(str));

String historyPatientListModelToJson(HistoryPatientListModel data) => json.encode(data.toJson());

class HistoryPatientListModel {
    int? responseCode;
    bool? status;
    String? message;
    Data? data;

    HistoryPatientListModel({
        this.responseCode,
        this.status,
        this.message,
        this.data,
    });

    factory HistoryPatientListModel.fromJson(Map<String, dynamic> json) => HistoryPatientListModel(
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
    int? allcount;
    DateTime? startDate;
    int? todaycount;
    int? monthcount;
    int? weekcount;
    List<Patient>? patients;

    Data({
        this.allcount,
        this.startDate,
        this.todaycount,
        this.monthcount,
        this.weekcount,
        this.patients,
    });

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        allcount: json["allcount"],
        startDate: json["start_date"] == null ? null : DateTime.parse(json["start_date"]),
        todaycount: json["todaycount"],
        monthcount: json["monthcount"],
        weekcount: json["weekcount"],
        patients: json["patients"] == null ? [] : List<Patient>.from(json["patients"]!.map((x) => Patient.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "allcount": allcount,
        "start_date": "${startDate!.year.toString().padLeft(4, '0')}-${startDate!.month.toString().padLeft(2, '0')}-${startDate!.day.toString().padLeft(2, '0')}",
        "todaycount": todaycount,
        "monthcount": monthcount,
        "weekcount": weekcount,
        "patients": patients == null ? [] : List<dynamic>.from(patients!.map((x) => x.toJson())),
    };
}

class Patient {
    int? patientId;
    String? name;
    DateTime? appointmentdate;
    DateTime? appointmentstarttime;
    DateTime? appointmentendtime;
    int? doctornameid;
    int? appointmentno;
    DateTime? createdAt;
    DateTime? updatedAt;
    int? v;
    String? profileImagelink;

    Patient({
        this.patientId,
        this.name,
        this.appointmentdate,
        this.appointmentstarttime,
        this.appointmentendtime,
        this.doctornameid,
        this.appointmentno,
        this.createdAt,
        this.updatedAt,
        this.v,
        this.profileImagelink,
    });

    factory Patient.fromJson(Map<String, dynamic> json) => Patient(
        patientId: json["patient_id"],
        name: json["name"],
        appointmentdate: json["appointmentdate"] == null ? null : DateTime.parse(json["appointmentdate"]),
        appointmentstarttime: json["appointmentstarttime"] == null ? null : DateTime.parse(json["appointmentstarttime"]),
        appointmentendtime: json["appointmentendtime"] == null ? null : DateTime.parse(json["appointmentendtime"]),
        doctornameid: json["doctornameid"],
        appointmentno: json["appointmentno"],
        createdAt: json["createdAt"] == null ? null : DateTime.parse(json["createdAt"]),
        updatedAt: json["updatedAt"] == null ? null : DateTime.parse(json["updatedAt"]),
        v: json["__v"],
        profileImagelink: json["ProfileImagelink"],
    );

    Map<String, dynamic> toJson() => {
        "patient_id": patientId,
        "name": name,
        "appointmentdate": "${appointmentdate!.year.toString().padLeft(4, '0')}-${appointmentdate!.month.toString().padLeft(2, '0')}-${appointmentdate!.day.toString().padLeft(2, '0')}",
        "appointmentstarttime": appointmentstarttime?.toIso8601String(),
        "appointmentendtime": appointmentendtime?.toIso8601String(),
        "doctornameid": doctornameid,
        "appointmentno": appointmentno,
        "createdAt": createdAt?.toIso8601String(),
        "updatedAt": updatedAt?.toIso8601String(),
        "__v": v,
        "ProfileImagelink": profileImagelink,
    };
}

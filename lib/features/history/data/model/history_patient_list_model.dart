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
    int? totalCount;
    DateTime? startDate;
    List<Patient>? patients;

    Data({
        this.totalCount,
        this.startDate,
        this.patients,
    });

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        totalCount: json["totalCount"],
        startDate: json["start_date"] == null ? null : DateTime.parse(json["start_date"]),
        patients: json["patients"] == null ? [] : List<Patient>.from(json["patients"]!.map((x) => Patient.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "totalCount": totalCount,
        "start_date": startDate?.toIso8601String(),
        "patients": patients == null ? [] : List<dynamic>.from(patients!.map((x) => x.toJson())),
    };
}

class Patient {
    int? patientId;
    String? name;
    String? type;
     String? imageUrl;
    String? dayDateTime;
    DateTime? createdAt;
    DateTime? updatedAt;
    int? v;

    Patient({
        this.patientId,
        this.name,
        this.type,
        this.dayDateTime,
        this.createdAt,
        this.updatedAt,
        this.imageUrl,
        this.v,
    });

    factory Patient.fromJson(Map<String, dynamic> json) => Patient(
        patientId: json["patient_id"],
        name: json["name"],
        type: json["type"],
         imageUrl: json["profile_image_url"],
        dayDateTime: json["day_date_time"],
        createdAt: json["createdAt"] == null ? null : DateTime.parse(json["createdAt"]),
        updatedAt: json["updatedAt"] == null ? null : DateTime.parse(json["updatedAt"]),
        v: json["__v"],
    );

    Map<String, dynamic> toJson() => {
        "patient_id": patientId,
        "profile_image_url":imageUrl,
        "name": name,
        "type": type,
        "day_date_time": dayDateTime,
        "createdAt": createdAt?.toIso8601String(),
        "updatedAt": updatedAt?.toIso8601String(),
        "__v": v,
    };
}

// To parse this JSON data, do
//
//     final prescriptionModel = prescriptionModelFromJson(jsonString);

import 'dart:convert';

PrescriptionModel prescriptionModelFromJson(String str) => PrescriptionModel.fromJson(json.decode(str));

String prescriptionModelToJson(PrescriptionModel data) => json.encode(data.toJson());

class PrescriptionModel {
    int? responseCode;
    bool? status;
    String? message;
    Data? data;

    PrescriptionModel({
        this.responseCode,
        this.status,
        this.message,
        this.data,
    });

    factory PrescriptionModel.fromJson(Map<String, dynamic> json) => PrescriptionModel(
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
    List<Prescription>? prescriptions;

    Data({
        this.totalCount,
        this.prescriptions,
    });

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        totalCount: json["totalCount"],
        prescriptions: json["Prescriptions"] == null ? [] : List<Prescription>.from(json["Prescriptions"]!.map((x) => Prescription.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "totalCount": totalCount,
        "Prescriptions": prescriptions == null ? [] : List<dynamic>.from(prescriptions!.map((x) => x.toJson())),
    };
}

class Prescription {
    int? pno;
    String? patientId;
    int? doctorId;
    int? appointmentId;
    String? name;
    String? type;
    String? duration;
    List<Timeoftheday>? timeoftheday;
    List<Timeoftheday>? tobetaken;
    String? remark;
    DateTime? createdAt;
    DateTime? updatedAt;
    int? v;

    Prescription({
        this.pno,
        this.patientId,
        this.doctorId,
        this.appointmentId,
        this.name,
        this.type,
        this.duration,
        this.timeoftheday,
        this.tobetaken,
        this.remark,
        this.createdAt,
        this.updatedAt,
        this.v,
    });

    factory Prescription.fromJson(Map<String, dynamic> json) => Prescription(
        pno: json["pno"],
        patientId: json["patient_id"],
        doctorId: json["doctorID"],
        appointmentId: json["appointmentID"],
        name: json["name"],
        type: json["type"],
        duration: json["duration"],
        timeoftheday: json["timeoftheday"] == null ? [] : List<Timeoftheday>.from(json["timeoftheday"]!.map((x) => Timeoftheday.fromJson(x))),
        tobetaken: json["tobetaken"] == null ? [] : List<Timeoftheday>.from(json["tobetaken"]!.map((x) => Timeoftheday.fromJson(x))),
        remark: json["remark"],
        createdAt: json["createdAt"] == null ? null : DateTime.parse(json["createdAt"]),
        updatedAt: json["updatedAt"] == null ? null : DateTime.parse(json["updatedAt"]),
        v: json["__v"],
    );

    Map<String, dynamic> toJson() => {
        "pno": pno,
        "patient_id": patientId,
        "doctorID": doctorId,
        "appointmentID": appointmentId,
        "name": name,
        "type": type,
        "duration": duration,
        "timeoftheday": timeoftheday == null ? [] : List<dynamic>.from(timeoftheday!.map((x) => x.toJson())),
        "tobetaken": tobetaken == null ? [] : List<dynamic>.from(tobetaken!.map((x) => x.toJson())),
        "remark": remark,
        "createdAt": createdAt?.toIso8601String(),
        "updatedAt": updatedAt?.toIso8601String(),
        "__v": v,
    };
}

class Timeoftheday {
    String? name;
    bool? value;

    Timeoftheday({
        this.name,
        this.value,
    });

    factory Timeoftheday.fromJson(Map<String, dynamic> json) => Timeoftheday(
        name: json["name"],
        value: json["value"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "value": value,
    };
}
